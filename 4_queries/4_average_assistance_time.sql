SELECT SUM(completed_at-started_at)/count(completed_at) as average_assistance_request_duration
from assistance_requests;
