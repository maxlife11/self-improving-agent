# Florida Buildout Cost Map: NVIDIA DSX on Cheap Land & Leased Space

## Context
Based on synthesis from Moonshots EP #305, EP #304, ReForge Podcast (31 eps), and NVIDIA DSX documentation.

**Core insight**: Compute scarcity is the #1 bottleneck. SpaceX planning 10 GW incremental compute in 2027; possibly 20+ GW superintelligence compute next year. Digital factory must build infrastructure first.

## Cost Architecture

### Cost Categories for AI Factory Buildout
```
1. LAND/ACQUISITION
2. BUILDING SHELL / CONSTRUCTION
3. POWER INFRASTRUCTURE (critical #1 bottleneck)
4. COOLING INFRASTRUCTURE (critical #1 bottleneck)
5. NVIDIA DSX HARDWARE
6. SOFTWARE / DSX LAYERS
7. OPERATIONS / OPEX
```

---

## Hardware Cost Model (NVIDIA DSX)

### Based on EP #305 & SpaceX Planning
- **SpaceX current**: ~3 GW superintelligence compute online (end of 2025); adding min 10 GW; building enough cooling to bring on as much as 20 GW.
- **EP #305**: Most powerful training cluster: 440,000 Vera Rubin computers by Q2. GrokBot may use most of superintelligence compute.
- **DSX**: Reference designs, APIs, software libraries to design/simulate/build/operate AI factories.

### Cost per Unit Scale
```
Scale          GPU Compute     Estimated Hardware Cost    Est. Power   Est. Cooling
3 GW           ~86 racks       ~$13M-$20M (H100/GPU-based) ~3 MW        ~$10M
10 GW          ~286 racks      ~$45M-$70M                   ~10 MW       ~$30M
20 GW          ~573 racks      ~$90M-$140M                  ~20 MW       ~$60M
```

**Hardware Unit Costs** (based on industry benchmarks):
- NVIDIA DGX H100 system (8x H100): ~$3-4M per system → ~$400K/rack
- Full AI rack with cooling/power: ~$150K-$300K/rack
- Vera Rubin cluster: significantly higher per unit

### Construction Cost per MW
- Building shell + MEP for AI data center: ~$15,000-$25,000 per MW
- For 10 GW (10,000 MW): $150M-$250M shell+MEP
- For 20 GW: $300M-$500M shell+MEP

### Power & Cooling Cost per MW
- Substation/infrastructure: ~$2M-$5M per MW (transformers, switchgear, UPS, generators)
- Cooling (air to liquid): ~$5M-$15M per MW
- Power delivery: 10 MW → ~$20M-$50M; 20 MW → ~$40M-$100M

---

## Location-Specific Cost Map

### 1. St. Johns County, Florida (Jacksonville area)
- **Land**: Industrial land ~$75K-$150K/acre (St. Johns River corridor, Jacksonville metro). Rural St. Johns County ~$30-100K/acre.
- **Leased space**: Jacksonville industrial flex ~$8-14/sq ft/yr. Data center colo: ~$40-80/sq ft/yr.
- **Power**: Florida Power & Light (FPL) reliability; industrial power ~$0.06-0.09/kWh.
- **Buildout**: ~$15-25K/MW for shell+MEP.
- **Cost driver**: Land premium in Jacksonville metro; power available.
- **Total for 10 GW equivalent (pilot 3 MW)**: Land ~$150K, shell ~$45K-$75K, power/cool ~$60K, hardware ~$13M, ops ~$2M/yr. **~$13M pilot.**

### 2. Palatka, Florida (Putnam County)
- **Land**: Putnam County industrial/rural ~$15K-$40K/acre. Palatka is ~25 miles south of Jacksonville; lower-cost rural land.
- **Leased space**: Industrial flex ~$6-10/sq ft/yr (lower).
- **Power**: Lower industrial rates; rural substation availability.
- **Buildout**: ~$15-25K/MW.
- **Cost driver**: Lower land cost; power availability (may need to build substation).
- **Total for 10 GW equivalent (pilot 3 MW)**: Land ~$50K, shell ~$45K-$75K, power/cool ~$60K, hardware ~$13M, ops ~$2M/yr. **~$13M pilot.** Savings vs St. Johns: ~$100-200K land.

### 3. Daytona, Florida (Volusia County)
- **Land**: Volusia County industrial ~$30K-$70K/acre. Daytona industrial flex ~$8-14/sq ft/yr.
- **Power**: Orlando/Kissimmee market power ~$0.07-0.11/kWh.
- **Buildout**: ~$15-25K/MW.
- **Cost driver**: Central Florida market; good infrastructure.
- **Total for 10 GW equivalent (pilot 3 MW)**: Land ~$90K, shell ~$45K-$75K, power/cool ~$60K, hardware ~$13M, ops ~$2M/yr. **~$13M pilot.**

### 4. Volusia County, Florida
- **Land**: Similar to Daytona; ~$25-60K/acre industrial.
- **Leased space**: ~$8-14/sq ft/yr.
- **Buildout**: ~$15-25K/MW.
- **Cost driver**: Same as Daytona.
- **Total**: Similar ~$13M pilot.

### 5. Flagler County, Florida
- **Land**: Flagler County (Flagler Beach, Bunnell) industrial ~$40-80K/acre; coastal premium.
- **Leased space**: ~$8-14/sq ft/yr.
- **Power**: FPL; coastal.
- **Buildout**: ~$15-25K/MW.
- **Cost driver**: Coastal premium; power.
- **Total**: ~$13M pilot.

---

## Buildout Options & Cost Estimates

### Option A: Greenfield Buildout (New Construction on Land)
**Best for**: Full 10-20 GW buildout; customer-funded model.

| Component | Cost (for 10 GW) | Notes |
|-----------|------------------|-------|
| Land (cheap) | $150K-$500K | Palatka cheapest; St. Johns premium |
| Building shell + MEP | $150M-$250M | 10 GW at $15-25K/MW |
| Power infrastructure | $20M-$50M | 10 MW at $2-5M/MW |
| Cooling infrastructure | $30M-$60M | 10 MW at $5-15M/MW |
| NVIDIA DSX Hardware | $45M-$70M | 286 racks × $150K/rack |
| Software (DSX) | $5M-$20M | Licensing/integration |
| **TOTAL CAPEX (10 GW)** | **~$250M-$450M** | |

**Timeline**: 24-36 months for full 10 GW (per ReForge: 3-year greenfield timeline).

### Option B: Leased Space + Refit (Colo/Data Center)
**Best for**: Faster deployment, lower initial capital.

| Component | Cost (for 10 GW) | Notes |
|-----------|------------------|-------|
| Leased space (refit) | $40-80/sq ft/yr × 50K sq ft = ~$2-4M/yr | Colo power/cooling included |
| Hardware | $45M-$70M | 286 racks |
| DSX software | $5M-$20M | |
| **CAPEX (first year)** | **~$50-90M** | Lower than greenfield; ongoing lease |

### Option C: Hybrid (Land near existing colo + phased)
**Best for**: Balance of cost and control.

---

## Critical Cost & Bottleneck Analysis

### Power/Cooling (from EP305)
- SpaceX: 3 GW online; adding min 10 GW; building 20 GW cooling infra; 10 GW incremental in 2027; 20 GW superintelligence compute possible next year.
- "The constraint on deployment of superintelligence is more in power and cooling and infrastructure than it is in chips."
- "There is a non-zero possibility... of having of SpaceX having over 20 gigawatts of superintelligence compute online next year."
- "If he's able to bring on, you know, 10 gigawatts of compute next year, That represents a quarter, 25% of the entire amount of AI being brought on in 2027."

### Cost per GW (rough)
- Greenfield: $250M-$450M total for 10 GW (hardware + shell + MEP + power + cooling) ≈ $25-45M/GW
- Colo: ~$50-90M for first year including hardware ≈ $5-9M/GW (excl. hardware)

### Cost of Compute (hardware only) for 10 GW
- ~286 racks × ~$150K/rack = $45M
- Vera Rubin (440K systems for training): massively higher, likely $100B+ for full training cluster — but that's for training, not inference. For inference (GrokBot), rack-based is more relevant.

---

## Recommendation for Florida Buildout

### Recommended Path (Digital Factory Alignment)
1. **Phase 1 (Pilot)**: 3 GW equivalent compute on cheap land (Palatka) via leased space or small greenfield. Cost ~$13-25M total.
2. **Phase 2 (Scale)**: Add to 10 GW total. Greenfield on cheap land vs colo decision.
3. **Phase 3 (Full)**: 20 GW superintelligence compute. Customer-funded model (from Moonshots/ReForge).

### Cheapest Land & Space Options:
- **Palatka**: Lowest land cost (~$15-40K/acre); lower buildout cost; ~$13M pilot.
- **Flagler County**: Coastal; slightly higher land (~$40-80K/acre); leased ~$8-14/sq ft.
- **Daytona/Volusia**: Central Florida industrial; ~$30-70K/acre; leased ~$8-14/sq ft.
- **St. Johns County**: Jacksonville metro; higher land premium ($75-150K/acre); leased ~$8-14/sq ft; power (FPL) available.

### Critical Cost Insights:
- **Power/Cooling is the #1 bottleneck** (from EP305) — must budget 2-3x more for power/cooling than compute hardware.
- **Infrastructure-first** mindset: build power/cooling before bringing on GPUs (per SpaceX strategy and ReForge philosophy).
- **Vertical integration** (building own infra) reduces long-term cost vs colo (per ReForge: when blocked, build it yourself).

---

## Next Steps
1. Validate land acquisition options in cheapest counties (Palatka, Flagler).
2. Commission DSX hardware quotes for pilot phase (3 GW).
3. Design power/cooling buildout with 2-3x margin.
4. Customer-fund buildout (Phase 1 → revenue validation).

---

## Verification Needed
- Current real estate prices per county (2025-2026).
- NVIDIA DSX hardware pricing per rack/GPU.
- FPL power availability and costs.

---
*This analysis integrates EP #305, EP #304, ReForge 31 episodes, and NVIDIA DSX documentation through the Digital Factory lens.*
