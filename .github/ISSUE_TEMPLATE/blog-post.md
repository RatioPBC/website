---
name: Blog Post
about: Create a new blog post
title: "[BLOG]: "
labels: ["blog"]
projects: ["RatioPBC/23"]
assignees: ''
body:
  - type: input
    id: title
    attributes:
      label: Working Title
      description: Proposed title of post
      placeholder: Why we build data widgets...
    validations:
      required: true
  - type: dropdown
    id: priority
    attributes:
      label: Priority
      options:
        - High
        - Medium
        - Low
      default: 1
    validations:
      required: true
  - type: dropdown
    id: content-type
    attributes:
      label: Content Type
      options:
        - How-to/Tutorial
        - Industry News/Trends
        - Case Study
        - Product Update
        - Thought Leadership
        - Company News
        - Other
      default: 4
    validations:
      required: true
  - type: textarea
    id: audience
    attributes:
      label: Target Audience
      description: Describe the primary audience
      render: shell
  - type: textarea
    id: goal
    attributes:
      label: Primary Goal
      description: What's the main objective? (e.g., drive traffic, generate leads, educate, brand awareness)
      render: shell

---

## Content Outline

**Key Points to Cover:**
- [ ] Point 1
- [ ] Point 2
- [ ] Point 3
- [ ] Point 4

**Call-to-Action (CTA):**
<!-- What action should readers take after reading? -->

## Resources & References

**Research Links:**
<!-- Add any reference materials, sources, or inspiration -->
- 
- 

**Internal Links:**
<!-- List any existing blog posts or pages to link to -->
- 
- 

**External Links:**
<!-- List any external sources to reference or link to -->
- 
- 

## Visual Assets

**Featured Image:**
- [ ] Stock photo
- [ ] Custom graphic
- [ ] Screenshot
- [ ] Infographic
- [ ] Other: ___________

**Additional Images/Media:**
<!-- Describe any other visual elements needed -->

## Production Checklist

### Writing Phase
- [ ] Outline approved
- [ ] First draft complete
- [ ] Internal review complete
- [ ] Revisions complete
- [ ] Final draft approved

### Pre-Publication
- [ ] Proofread and edited
- [ ] SEO optimization complete
- [ ] Meta description written
- [ ] Featured image ready
- [ ] Internal links added
- [ ] External links verified

### Publishing
- [ ] Publish
- [ ] URL structure confirmed
- [ ] Categories/tags applied
- [ ] Author bio updated

### Promotion
- [ ] Social media posts scheduled
  - [ ] Blue Sky
  - [ ] LinkedIn
- [ ] Email newsletter inclusion
- [ ] Slack/internal announcement
- [ ] Added to content calendar

## Notes & Comments

<!-- Any additional context, special requirements, or notes for the team -->
