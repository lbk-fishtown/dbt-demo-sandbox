# CHANGES

This document tracks all changes made to the dbt project from the original `vignette/fs-vscode` branch.

## Files Modified

### Configuration Files
- **`.gitignore`** - Modified (updated ignore patterns)

### Models
- **`models/marts/aggregates/aggregates.yml`** - Modified (updated model configurations)
- **`models/marts/core/core.yml`** - Modified (updated model configurations, additional fixes applied)
- **`models/marts/core/dim_parts.sql`** - Modified (updated model logic)
- **`models/staging/tpch/tpch_sources.yml`** - Modified (updated source configurations)

## Files Added

### New Models
- **`models/marts/core/dim_customers.sql`** - Added (new customer dimension model)

## Files Removed

### Analysis Files
- **`analyses/analyses.yml`** - Deleted
- **`analyses/generate_model_yaml.sql`** - Deleted  
- **`analyses/generate_source_yaml.sql`** - Deleted
- **`analyses/select_from_orders_example.sql`** - Deleted

### Utility Models
- **`models/demo_examples/utils/all_days.sql`** - Deleted
- **`models/demo_examples/utils/utils.yml`** - Deleted

### Legacy Customer Models
- **`models/marts/core/dim_customers_v1.sql`** - Deleted
- **`models/marts/core/dim_customers_v2.sql`** - Deleted

### Seeds
- **`seeds/data.yml`** - Deleted
- **`seeds/fake_data.csv`** - Deleted
- **`seeds/snowflake_contract_rates.csv`** - Deleted

## Summary

**Total Changes:**
- 5 files modified
- 1 file added
- 10 files deleted

**Key Updates:**
- Consolidated customer dimension models into a single `dim_customers.sql`
- Removed legacy customer model versions (v1, v2)
- Cleaned up analysis examples and utility models
- Updated model and source configurations
- Applied additional fixes to core.yml configuration
- Updated project ignore patterns

## Change History

### Latest Update
- **Date**: $(date +"%Y-%m-%d %H:%M:%S")
- **Changes**: Additional fixes applied to `models/marts/core/core.yml`

### Initial Changes
- **Date**: $(date +"%Y-%m-%d %H:%M:%S") (previous session)
- **Changes**: Initial consolidation and cleanup

## Branch
Changes prepared for: `vignette/fs-vscode` 