-- 1. Overall Loan Approval Rate
SELECT COUNT(*) AS total_applications, SUM(LoanApproved) AS total_approved, ROUND(AVG(LoanApproved)*100,2) AS approval_rate_percent FROM loans;

-- 2. Approval Rate by Risk Category
SELECT RiskCategory, COUNT(*) AS total_applicants, SUM(LoanApproved) AS approved_count, ROUND(AVG(LoanApproved)*100,2) AS approval_rate_percent FROM loans GROUP BY RiskCategory ORDER BY approval_rate_percent DESC;

-- 3. Approval Rate by Employment Status
SELECT EmploymentStatus, COUNT(*) AS total_applicants, SUM(LoanApproved) AS approved_count, ROUND(AVG(LoanApproved)*100,2) AS approval_rate_percent FROM loans GROUP BY EmploymentStatus ORDER BY approval_rate_percent DESC;

-- 4. Approval Rate by Loan Purpose
SELECT LoanPurpose, COUNT(*) AS total_applicants, SUM(LoanApproved) AS approved_count, ROUND(AVG(LoanApproved)*100,2) AS approval_rate_percent, ROUND(AVG(RiskScore),2) AS avg_risk_score FROM loans GROUP BY LoanPurpose ORDER BY approval_rate_percent DESC;

-- 5. Approval Rate by Credit Score Band
SELECT CASE WHEN CreditScore < 580 THEN 'Poor (<580)' WHEN CreditScore BETWEEN 580 AND 669 THEN 'Fair (580-669)' WHEN CreditScore BETWEEN 670 AND 739 THEN 'Good (670-739)' WHEN CreditScore BETWEEN 740 AND 799 THEN 'Very Good (740-799)' ELSE 'Exceptional (800+)' END AS credit_score_band, COUNT(*) AS total_applicants, SUM(LoanApproved) AS approved_count, ROUND(AVG(LoanApproved)*100,2) AS approval_rate_percent FROM loans GROUP BY credit_score_band ORDER BY MIN(CreditScore);