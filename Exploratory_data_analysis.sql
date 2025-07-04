-- Exploratory Data Analysis

select *
from layoffs_staging2
where percentage_laid_off = 1
order by total_laid_off desc;
 
select company, sum(total_laid_off)
from layoffs_staging2
group by company
order by 2 desc;
 
select min(`date`), max(`date`)
from layoffs_staging2;

select industry, sum(total_laid_off)
from layoffs_staging2
group by industry
order by 2 desc;

select country, sum(total_laid_off)
from layoffs_staging2
group by country
order by 2 desc;

select Year(`date`), sum(total_laid_off)
from layoffs_staging2
group by Year(`date`)
order by 1 desc;

select company, AVG(percentage_laid_off)
from layoffs_staging2
group by company
order by 2 desc;

select substring(`date`, 1, 7) as month_year, sum(total_laid_off)
from layoffs_staging2
where substring(`date`, 1, 7) is not null
group by month_year
order by 1 asc;

with Rolling_total as
(
select substring(`date`, 1, 7) as month_year, sum(total_laid_off) as total_off
from layoffs_staging2
where substring(`date`, 1, 7) is not null
group by month_year
order by 1 asc
)
select month_year, total_off, sum(total_off) over(order by month_year) as rolling_total
from Rolling_total;

select company, year(`date`), sum(total_laid_off)
from layoffs_staging2
group by company, year(`date`)
order by 3 desc;

with Company_Year (company, years, total_laid_off) as
(
select company, year(`date`), sum(total_laid_off)
from layoffs_staging2
group by company, year(`date`)
), Company_Year_Rank as
(select *, dense_rank() over(partition by years order by total_laid_off desc) as Ranking
from Company_Year
where years is not null
)
select *
from Company_Year_Rank 
where Ranking <= 5;

