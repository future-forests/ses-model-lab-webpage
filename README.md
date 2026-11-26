# SES Model Lab — Future Forests C3

> **Maintained by:** Marta Wenta, Scientific Modelling Coordinator
> Future Forests Excellence Cluster, Universität Freiburg

Website: **[future-forests.github.io/ses-model-lab-webpage](https://future-forests.github.io/ses-model-lab-webpage/)**

This repository holds the SES Model Lab landing page together with the modelling
framework registry of the Future Forests Excellence Cluster. It describes the
modelling groups contributing to C3, what each group does, and what data they
need and produce.

---

## Pages

- 🌐 **[Landing page](https://future-forests.github.io/ses-model-lab-webpage/)** — central entry point: upcoming dates (read live from the calendar file), recurring sessions (Model Lab Café, Hands on Science), research groups, SES Model Lab at AGM 2026, HPC resources, the coding course, and links to every registry below
- 📊 **[Modelling Registry](https://future-forests.github.io/ses-model-lab-webpage/registry.html)** — groups directly related to modelling: inputs, outputs, methods, and researchers
- 🔀 **[Models Overview](https://future-forests.github.io/ses-model-lab-webpage/models_overview.html)** — inputs and outputs across all FuFo models
- 🎯 **[Looking at the Cluster from the End](https://future-forests.github.io/ses-model-lab-webpage/AGM_looking_from_the_end.html)** — AGM presentation: an idealised view of the Cluster's areas and transfer pathways, worked backwards from the desirable forest
- 🇩🇪 German version of model registry: [Registry](https://future-forests.github.io/ses-model-lab-webpage/registry_de.html)

## How to subscribe to the ModelLab calendar

- **Thunderbird:** Calendar tab → right-click in the calendar list → **New Calendar…** → **On the Network** → paste the link below in "Location" and check "This location doesn't require credentials"
- **Outlook:** Add calendar → Subscribe from web → paste the link below
- **Apple Calendar:** File → New Calendar Subscription → paste the link below
- **Google Calendar:** Settings → Add calendar → From URL → paste the link below

**Calendar feed URL:** `https://future-forests.github.io/ses-model-lab-webpage/model_lab_calendar.ics`

It covers the Model Lab Café, Hands on Science, the FuFo Coding Course,
committee and cross-scenario meetings.

We recommend choosing the option "Refresh every day".

## Next dates on the landing page

The "Next: …" lines on the Recurring formats cards and the "Next meeting · …" lines
on the Research groups cards are filled in from `model_lab_calendar.ics` — add the
event to the calendar and the page updates itself; there is nothing to edit in
`index.html`.

- A card is linked to its events by the `calendar` keyword in its entry in `index.html`
  (e.g. `"calendar": "Model Lab Café"`). An event matches when its title contains the
  keyword; case, accents, spaces and punctuation are ignored, so "Model Lab Cafe" works too.
- The card shows the first event that has not ended yet, with its `LOCATION` as the venue.
  With no upcoming event, it shows "Next date to be announced" / "Next meeting to be announced".
- On the Model Lab Café and Hands on Science cards, the topic comes from the event:
  the part of the title after a colon (`Model Lab Café: Sensitivity Analysis`) in bold,
  followed by the `DESCRIPTION`.


