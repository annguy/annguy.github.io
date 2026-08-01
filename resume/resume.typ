// An Nguyen — Principal AI / ML Resume
// Compile locally:
//   typst compile resume.typ An_Nguyen_Resume.pdf
//
// Replace the placeholder LinkedIn / GitHub / Google Scholar URLs below
// with your exact profile links.

#set page(
  paper: "a4",
  margin: (x: 15mm, y: 13mm),
  numbering: "1 / 1",
)

#set text(
  font: "Arial",
  size: 8.8pt,
  fill: rgb("#172033"),
)

#set par(
  leading: 0.48em,
  justify: false,
)

#set list(
  indent: 3.8mm,
  body-indent: 2.8mm,
  spacing: 1.8pt,
)

#let accent = rgb("#145da0")
#let muted = rgb("#5f6b7a")
#let rule-color = rgb("#dfe4ea")
#let light = rgb("#f2f4f6")

#let section(title) = {
  v(5pt)
  text(
    size: 12pt,
    weight: "bold",
    fill: accent,
    smallcaps(title),
  )
  v(1pt)
  line(length: 100%, stroke: 0.8pt + rule-color)
  v(2.5pt)
}

#let role(title, organization, dates, body) = {
  grid(
    columns: (1fr, auto),
    column-gutter: 8pt,
    [
      #text(weight: "bold", size: 9.4pt)[#title]
      #linebreak()
      #text(fill: accent, weight: "semibold")[#organization]
    ],
    [
      #align(right)[
        #text(fill: muted, size: 8.3pt)[#dates]
      ]
    ],
  )
  v(1.5pt)
  body
  v(4pt)
}

#let compact-role(title, organization, dates, description) = {
  grid(
    columns: (1fr, auto),
    column-gutter: 8pt,
    [
      #text(weight: "bold")[#title]
      #text(fill: muted)[ — #organization]
    ],
    [
      #align(right)[
        #text(fill: muted, size: 8.2pt)[#dates]
      ]
    ],
  )
  text(fill: muted)[#description]
  v(3pt)
}

#let competency(label, content) = {
  text(weight: "bold")[#label:]
  [ #content]
  v(1.7pt)
}

// Make all links visually distinct (underlined, accent colour)
#show link: it => underline(stroke: 0.5pt + accent, offset: 1.5pt, text(fill: accent, it))

#align(center)[
  #text(size: 21pt, weight: "bold")[An Nguyen, Dr.-Ing.]
  #v(2pt)
  #text(size: 10pt, weight: "semibold", fill: accent)[
    Digital Focus Topic Lead AI & Digital Assistants · Enterprise AI Architect · Postdoctoral Researcher · Freelance AI Engineer & Consultant
  ]
  #v(2pt)
  #text(size: 8.4pt, fill: muted)[
    Berlin, Germany ·
    #link("mailto:an.nguyen@live.de")[an.nguyen\@live.de] ·
    #link("https://annguy.github.io")[website] ·
    #link("https://www.linkedin.com/in/an-nguyen-44b7b0b4")[LinkedIn] ·
    #link("https://github.com/annguy")[GitHub] ·
    #link("https://scholar.google.com/citations?user=c9iG6RUAAAAJ")[Google Scholar]
  ]
]

#section("Professional Summary")

I bridge cutting-edge AI research with enterprise-scale AI delivery. I hold a Ph.D. in Computer Science (Machine Learning), authored 10+ peer-reviewed publications, and bring 10+ years of experience building production AI systems across research and industry. At Siemens Healthineers I define enterprise AI strategy, architecture, governance, and platform capabilities for agentic AI, LLMs, knowledge graphs, and multimodal AI. I partner with executives, architects, and engineering teams to translate AI innovation into scalable enterprise platforms and products deployed in regulated healthcare environments.
#section("Core Competencies")

#competency(
  "Enterprise AI Strategy & Architecture",
  [AI Strategy · AI Architecture · Technical Leadership · Product Ownership · AI Governance · Responsible AI · Stakeholder Management · Cross-functional Leadership · AI Roadmapping · Technology Strategy · Innovation Management],
)

#competency(
  "Applied AI",
  [Agentic AI · Large Language Models (LLMs) · Retrieval-Augmented Generation (RAG) · Knowledge Graphs · Ontologies · Multimodal AI · NLP · Explainable AI · Probabilistic Machine Learning · Time Series Analysis · Predictive Analytics],
)

#competency(
  "AI Engineering",
  [Python · PyTorch · TensorFlow · Azure · Databricks · MLOps · SQL · Git · Linux · Cloud & On-Prem Infrastructure · ML System Design],
)

#competency(
  "Product & Delivery",
  [Product Ownership · Agile Development · Technical Program Leadership · AI Solution Architecture · Production ML Systems · Enterprise Software · Digital Assistants · Customer Service AI],
)

#competency(
  "Healthcare & Research",
  [Healthcare AI · Medical Devices · Clinical Data Analytics · IoT Analytics · Process Mining · Scientific Research · Experimental Design · Technology Transfer · Research Supervision · Mentoring],
)

#section("Professional Experience")

#role(
  "Digital Focus Topic Lead — AI & Digital Assistants",
  "Siemens Healthineers",
  "Jun 2024 – Present",
  [
    - Define enterprise AI strategy, AI reference architecture, and technology roadmap for AI & Digital Assistants across Customer Services.
    - Design reusable enterprise AI capabilities including agentic AI, LLMs, knowledge graphs, multimodal AI, Azure, Databricks, and hybrid cloud infrastructure.
    - Establish AI governance, evaluation frameworks, Responsible AI principles, and technical standards for production AI systems.
    - Lead enterprise-wide AI initiatives across product, engineering, research, and enterprise architecture.
    - Influence enterprise-wide AI platform decisions including build-versus-buy evaluations, reusable platform capabilities, and long-term AI architecture.
    - Drive executive alignment and technology adoption by translating AI research into scalable enterprise products for regulated healthcare.
    - Mentor engineers and AI practitioners while fostering internal AI communities and sharing best practices across teams.
  ],
)

#role(
  "Freelance AI Engineer & Consultant",
  "Independent",
  "Mar 2024 – Present",
  [
    - Advise startups on enterprise AI architecture, agentic AI, LLM applications, RAG systems, and production deployment.
    - Prototype and deploy production-ready AI systems, from architecture to implementation.
  ],
)

#role(
  "Senior Data Scientist & Product Owner",
  "Siemens Healthineers",
  "Oct 2022 – May 2024",
  [
    - Led design and deployment of production ML systems for near-real-time industrial machine monitoring.
    - Designed operational AI platforms integrating predictive analytics, monitoring, and automated service workflows.
    - Co-led enterprise AI innovation initiatives and hackathons, accelerating adoption of modern AI technologies across business units.
  ],
)

#pagebreak()

#role(
  "Data Scientist & Product Owner (part-time during Ph.D.)",
  "Siemens Healthineers",
  "Oct 2018 – Sep 2022",
  [
    - Developed production ML solutions using IoT, enterprise, and PLM data.
    - Built explainable-AI methods for customer-sentiment prediction and operational analytics.
    - Co-invented a U.S. patent for AI-driven customer-satisfaction prediction.
  ],
)

#section("Academic, Research & Teaching")

#compact-role(
  "Postdoctoral Researcher",
  "University of Erlangen–Nürnberg (FAU)",
  "2023 – Present",
  [Supervise PhD and Master's students; healthcare-AI research.],
)

#compact-role(
  "Research Group Lead (commissarial) · Course Creator & Instructor",
  "FAU Erlangen–Nürnberg",
  "2018 – 2022",
  [Led Applied ML Workgroup (PhD students, industry projects, 2019–2020). Created and taught _ML & Data Analytics for Industry 4.0 Seminar_ (2019–2022), _ML for Time Series Projects_ (2020–2022), and _Project ML & Data Analytics_ (2020-2022). Supervised 20+ Master's theses, projects, and internships. A collaborative mentor and connector between research, teaching, and industry practice.],
)

#compact-role(
  "Doctoral Researcher",
  "University of Erlangen–Nürnberg (FAU)",
  "2018 – 2022",
  [Researched machine learning for healthcare and business analytics, with applications in gait analysis, business process management, and customer service AI. Industrial collaboration with Siemens Healthineers. Advisor: Prof. Dr. Björn Eskofier.],
)

#compact-role(
  "Visiting Researcher",
  "University of California, Irvine",
  "2022",
  [Probabilistic modelling of irregular and mixed-type time-series data.],
)

#compact-role(
  "Visiting Researcher",
  "Frankel Cardiovascular Center & Biomedical & Clinical Informatics Lab, University of Michigan",
  "2017",
  [ML and signal-processing algorithms for atrial-fibrillation detection from ECG data.],
)

#v(1pt)
#text(fill: muted)[*Peer review:* NeurIPS · IJCAI · ECML · IEEE BHI]
#v(3pt)

#section("Education")

#grid(
  columns: (1fr, 1fr),
  column-gutter: 16pt,
  row-gutter: 6pt,
  [
    #text(weight: "bold")[Dr.-Ing., Computer Science]
    #linebreak()
    #text(fill: accent)[University of Erlangen–Nürnberg]
    #linebreak()
    #text(fill: muted, size: 8.2pt)[Magna Cum Laude · 2018 – 2023]
  ],
  [
    #text(weight: "bold")[M.Sc., Electrical Engineering]
    #linebreak()
    #text(fill: accent)[Technical University of Berlin]
    #linebreak()
    #text(fill: muted, size: 8.2pt)[Grade 1.0 · Top 1% · 2016 – 2018]
  ],
  [
    #text(weight: "bold")[M.Sc.Eng., Electrical & Computer Engineering]
    #linebreak()
    #text(fill: accent)[University of Michigan]
    #linebreak()
    #text(fill: muted, size: 8.2pt)[GPA 4.0 / 4.0 · Top 1% · 2016 – 2017]
  ],
  [
    #text(weight: "bold")[B.Sc., Electrical Engineering]
    #linebreak()
    #text(fill: accent)[Technical University of Berlin]
    #linebreak()
    #text(fill: muted, size: 8.2pt)[Grade 1.4 · Top 1% · 2011 – 2016]
  ],
  [
    #text(weight: "bold")[Study Abroad — Electrical Engineering]
    #linebreak()
    #text(fill: accent)[KTH Royal Institute of Technology, Stockholm]
    #linebreak()
    #text(fill: muted, size: 8.2pt)[ERASMUS+ · 2014 – 2015]
  ],
)

#section("Selected Publications (Full list on Google Scholar)")

- Schwinn et al. incl. *An Nguyen* (co-author). "Improving Robustness against Real-World and Worst-Case Distribution Shifts through Decision Region Quantification." _ICML 2022._
- *#text(fill: rgb("#172033"))[An Nguyen]* et al. (first author). "System Design for a Data-Driven and Explainable Customer Sentiment Monitor Using IoT and Enterprise Data." _IEEE Access, 2021._
- *#text(fill: rgb("#172033"))[An Nguyen]* et al. (first author). "Development and Clinical Validation of Inertial Sensor-Based Gait-Clustering Methods in Parkinson's Disease." _JNRE, 2019._

#section("Awards, Communities & Skills")

- *Patent:* AI-based Customer Satisfaction Prediction for Medical Devices (US App. 17/375,306).
- *Awards:* Outstanding Master's Degree Award — VDI Berlin-Brandenburg, best engineering graduates in the region (2019) · Fulbright Travel Grant — U.S. government merit award for graduate study at the University of Michigan (2016) · Rosa Luxemburg Foundation Scholarship — competitive full study scholarship by the German Federal Ministry of Education for gifted students (2011–2018).
- *Communities:* Co-founded company internal Data Science Community (500+ members) 
- *Languages:* German (native) · English (fluent) · Swedish (proficient) · Vietnamese (proficient) · French (beginner).
- *Engineering:* Python · PyTorch · TensorFlow · Azure · Databricks · LangChain · LangGraph · MLflow · SQL · Git · Linux.

#v(5pt)
#line(length: 100%, stroke: 0.6pt + rule-color)
#v(3pt)

