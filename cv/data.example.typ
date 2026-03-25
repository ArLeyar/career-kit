// CV Data — Example Template
// Copy this file as data.typ and fill in your information
// Principle: no fabrication, strategic silence on gaps, strategic emphasis

#let personal = (
  name: "Jane Smith",
  title: "Senior Backend Engineer",
  tagline: "Distributed Systems · AI Agents · Cloud Infrastructure",
  email: "jane.smith@example.com",
  linkedin: "linkedin.com/in/janesmith",
  location: "Remote, US",
)

#let summaries = (
  // Default summary for general applications
  default: "Senior backend engineer with 8+ years building scalable distributed systems. Built real-time data pipelines processing 50k+ events/sec at TechCorp, led platform migration serving 10M+ users at StartupCo. Currently building open-source infrastructure for AI agent orchestration. I ship fast and iterate based on data.",

  // Variant: crypto/trading focus
  crypto: "Backend engineer specializing in high-throughput trading infrastructure. Built exchange settlement systems handling billions in daily volume, designed low-latency market data pipelines, and architected multi-chain blockchain integrations. Deep expertise in Go, Rust, and event-driven architectures.",

  // Variant: AI/ML focus
  ai: "AI-native backend engineer building production agent systems in Go and Rust. Created multi-agent orchestration frameworks, LLM-powered developer tools, and real-time data infrastructure. 8+ years of distributed systems experience across fintech, crypto, and high-load consumer products.",
)

#let experience = (
  current: (
    company: "MyStartup",
    title: "Founder & Engineer",
    subtitle: "Open Source Infrastructure",
    period: "Jan 2026 — Present",
    bullets: (
      (text: "Built a high-performance data collector processing real-time WebSocket streams into columnar storage with 60+ computed metrics", tags: ("systems", "data", "open-source")),
      (text: "Created CLI tool for orchestrating multiple AI coding agents in parallel with dependency resolution", tags: ("ai", "tooling", "open-source")),
      (text: "Comprehensive testing: 70+ tests including E2E suite with mock server and integration tests", tags: ("testing", "quality")),
    ),
    tech: "Rust, Go, Tokio, WebSocket, Parquet",
  ),

  company_a: (
    company: "TechCorp",
    title: "Senior Backend Engineer & Team Lead",
    subtitle: "Infrastructure Platform · 500+ Microservices",
    period: "Mar 2024 — Dec 2025",
    bullets: (
      (text: "Led 6-person team shipping two parallel infrastructure products on schedule", tags: ("leadership", "team")),
      (text: "Architected multi-tenant platform with transaction processing and settlement flows for enterprise clients", tags: ("architecture", "scale")),
      (text: "Built real-time monitoring system with ClickHouse analytics for hardware metrics and alerting", tags: ("monitoring", "data")),
      (text: "Designed event-driven data pipelines improving system throughput under high-availability requirements", tags: ("architecture", "performance")),
    ),
    tech: "Go, PostgreSQL, Redis, Kafka, ClickHouse, gRPC, Kubernetes",
  ),

  company_b: (
    company: "BigPlatform",
    title: "Senior Backend Engineer",
    subtitle: "Core Services · 50M+ MAU · Top-10 in Category",
    period: "Jun 2022 — Feb 2024",
    bullets: (
      (text: "Owned core service handling thousands of RPS: payment flows, hold/commit patterns, and refund logic", tags: ("architecture", "scale", "go")),
      (text: "Implemented idempotency layer guaranteeing consistency under concurrent financial transactions", tags: ("scale", "performance")),
      (text: "Contributed to year-long service decomposition: mapped architecture, executed zero-downtime migration via blue-green deployments", tags: ("architecture", "leadership")),
      (text: "Authored custom Go AST linters for log validation and test traceability across 15+ microservices", tags: ("tooling", "go", "quality")),
    ),
    tech: "Go, PostgreSQL, Redis, Kafka, gRPC, Kubernetes, Grafana",
  ),

  company_c: (
    company: "FinTechStartup",
    title: "Backend Engineer",
    subtitle: "Trading Platform · High Volume",
    period: "Jan 2021 — May 2022",
    bullets: (
      (text: "Integrated blockchain nodes for deposits, withdrawals, and on-chain confirmation tracking", tags: ("crypto", "blockchain")),
      (text: "Built analytics integration for user attribution and campaign measurement", tags: ("data", "product")),
    ),
    tech: "Kotlin, PostgreSQL, Redis, NATS, Docker, AWS",
  ),

  company_d: (
    company: "StreamingCo",
    title: "Backend Engineer",
    subtitle: "Streaming Platform · Millions of Users · 10,000+ RPS",
    period: "Sep 2017 — Dec 2020",
    bullets: (
      (text: "Built high-load Java/Spring microservices powering content API: catalog, search, recommendations under strict latency SLAs", tags: ("scale", "architecture")),
      (text: "Led mobile downloads feature team, designed backend architecture for offline content consumption", tags: ("product", "architecture", "leadership")),
      (text: "Built authentication system deployed to 1M+ devices across multiple platforms", tags: ("scale", "product")),
    ),
    tech: "Java, Spring, PostgreSQL, MySQL, MongoDB, Redis, Prometheus, Grafana",
  ),
)

// Skills: primary = visible on profile, secondary = ATS keywords
#let skills = (
  primary: ("Go", "Rust", "AI Agents", "Distributed Systems", "Microservices", "Kafka", "PostgreSQL", "Kubernetes", "System Design"),
  secondary: ("gRPC", "REST APIs", "Redis", "Docker", "AWS", "Python", "WebSocket", "CI/CD", "Prometheus", "Grafana", "Java", "Kotlin", "GraphQL", "Event-Driven Architecture"),
)

#let education = (
  university: "State University",
  degree: "Bachelor's & Master's in Computer Science",
  period: "2010 — 2016",
)
