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
    Digital Focus Topic Lead AI & Digital Assistants · Postdoctoral Researcher · AI Freelancer
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

AI technical leader with 8+ years of professional machine-learning experience across industry and academia, and 10+ years including research appointments during graduate studies. Currently leading AI & Digital Assistants for Siemens Healthineers Customer Services, defining AI strategy, architecture, governance, and enterprise adoption of agentic AI, large language models, knowledge graphs, multimodal AI, and digital assistants. Ph.D. in Computer Science with an active postdoctoral affiliation, combining research excellence with hands-on delivery of production AI systems.

#section("Core Competencies")

#competency(
  "AI Strategy & Leadership",
  [AI Strategy · Enterprise AI Architecture · Technical Leadership · Product Ownership · AI Governance · Responsible AI · Stakeholder Management · Cross-functional Leadership · AI Roadmapping · Technology Strategy · Innovation Management],
)

#competency(
  "Machine Learning & AI",
  [Agentic AI · Large Language Models (LLMs) · Retrieval-Augmented Generation (RAG) · Knowledge Graphs · Ontologies · Multimodal AI · NLP · Explainable AI · Probabilistic Machine Learning · Time Series Analysis · Predictive Analytics],
)

#competency(
  "Engineering & MLOps",
  [Python · PyTorch · TensorFlow · Azure · Databricks · MLOps · SQL · Git · Linux · Cloud & On-Prem Infrastructure · ML System Design],
)

#competency(
  "Product & Delivery",
  [Product Ownership · Agile Development · Technical Program Leadership · AI Solution Architecture · Production ML Systems · Enterprise Software · Digital Assistants · Customer Service AI],
)

#competency(
  "Research & Healthcare",
  [Healthcare AI · Medical Devices · Clinical Data Analytics · IoT Analytics · Process Mining · Scientific Research · Experimental Design · Technology Transfer · Research Supervision · Mentoring],
)

#section("Professional Experience")

#role(
  "Digital Focus Topic Lead — AI & Digital Assistants",
  "Siemens Healthineers",
  "Jun 2024 – Present",
  [
    - Lead AI strategy, architecture, and roadmap for Customer Services.
    - Lead global cross-functional initiatives delivering agentic AI, LLM, multimodal AI, and digital-assistant solutions.
    - Design reusable AI platforms using Azure, Databricks, knowledge graphs, semantic technologies, and on-prem infrastructure.
    - Define governance for trustworthy AI, evaluation, explainability, and responsible AI.
    - Partner with executives, architects, and engineering teams to translate AI research into enterprise products.
  ],
)

#role(
  "Freelance AI Engineer",
  "Independent",
  "Mar 2024 – Present",
  [
    - Build LLM, agentic-AI, and production-ML solutions for startups.
  ],
)

#role(
  "Senior Data Scientist & Product Owner",
  "Siemens Healthineers",
  "Oct 2022 – May 2024",
  [
    - Designed and deployed production ML systems processing near-real-time industrial machine data.
    - Built operational-intelligence platforms with automated ticketing, monitoring, and predictive analytics.
    - Co-organized an enterprise AI innovation challenge and hackathon.
  ],
)

#role(
  "Data Scientist & Product Owner (part-time during Ph.D.)",
  "Siemens Healthineers",
  "Oct 2018 – Sep 2022",
  [
    - Developed production ML solutions using IoT, enterprise, and PLM data.
    - Built explainable-AI solutions for customer-sentiment prediction and operational analytics.
    - Co-invented a U.S. patent for AI-driven customer-satisfaction prediction.
  ],
)

#pagebreak()

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
  [Led Applied ML Workgroup (PhD students, industry projects, 2019–2020). Created and taught _ML & Data Analytics for Industry 4.0 Seminar_ (2019–2022), _ML for Time Series Projects_ (2020–2022), and _Project ML & Data Analytics_ (2020-2022). Supervised 20+ Master's theses, projects, and internships.],
)

#compact-role(
  "Doctoral Researcher",
  "University of Erlangen–Nürnberg (FAU)",
  "2018 – 2023",
  [Research in machine learning for healthcare and business analytics (magna cum laude).],
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

#compact-role(
  "Peer Review",
  "NeurIPS · IJCAI · ECML · IEEE BHI",
  "",
  [],
)

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

#section("Selected Research, Leadership & Awards")

- 13 peer-reviewed publications in machine learning and healthcare AI, including ICML, UAI, IJCNN, IEEE Access, and the Journal of NeuroEngineering and Rehabilitation.
- U.S. Patent: AI-based Customer Satisfaction Prediction for Medical Devices.
- Co-founder, Siemens Healthineers Dataneers Community (300+ members); Founder, Data Science Community (300+ members).
- Reviewer for NeurIPS, IJCAI, and ECML.
- Outstanding Master's Degree Award (VDI), Fulbright Travel Grant, and Rosa Luxemburg Foundation Scholarship.

#v(5pt)
#line(length: 100%, stroke: 0.6pt + rule-color)
#v(3pt)
#align(center)[
  #text(fill: muted, size: 7.8pt)[Professional references available upon request.]
]
