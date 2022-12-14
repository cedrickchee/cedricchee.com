+++
title = "Why Ubuntu"
#description = "This is a showcase post."
date = 2020-03-01T22:53:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["opinion", "ubuntu"]

[extra]
ToC = false
+++

<!--**The plan:** this will be a mega-collection for everything about Ubuntu under-the-sun:-->

# Six reasons why developers choose Ubuntu Desktop

Finally, I have some downtime to sit down and think about this topic. Before I get to the key reasons, I'll start with a little story of mine.

I'm a long time Ubuntu user for both desktop and server. Before Ubuntu, my first Linux OS is Debian. That was during my college time (2000) and during some courses related to programming and OS. I dabbled with Linux kernel not long after. 

This journey opened up and introduced me to other Linux distros like Red Hat and Gentoo. Along this journey, I distro hop a lot that I lost count now. But that didn't stop until around 2010, when I fully migrated to new laptop and installed Ubuntu Desktop.

Back then, the timing was perfect — the combo of hardware support from mainline linux kernel is almost perfect and software support from Ubuntu Desktop is usable. So, over the course of several months, I also migrated my homelab and staging environment servers to use Ubuntu Server. Since then, I only use Ubuntu Server in a small number of production workloads. Now, Ubuntu is default choice for new deployments.

When I just started learning Ubuntu, I have a clear strategy for the next 3 to 5 years and that is, I need an OS that is geared for productivity — supports efficient workflow from development to production. From the whitepaper, this strategy is aligned to "Consistent OS experience across platforms".

Without further ado, below is the highlights from the [whitepaper](https://pages.ubuntu.com/rs/066-EOV-335/images/Desktop_Developers_WP_Canonical_Final.pdf).

## First choice for artificial intelligence and machine learning

- GPUs have changed the face of AI, and NVIDIA is investing in CUDA on Linux to unleash the power of their latest graphics cards for general computing.
- Canonical has also worked with Google to develop Kubeflow, a solution for rapidly building composable, portable, and scalable machine learning stacks.

## Consistent OS experience across platforms

- Arguably, the greatest advantage of developing on Ubuntu is that it enables users to work with the exact same underlying operating system on their desktops as they do on their servers, in the cloud, and on IoT devices.
- This consistent Ubuntu experience makes it easy to test locally before deploying globally – providing developers with a smooth path from development to production, with the same software running on both their desktop and target production environment.

## Streamlined distribution through snaps

- For developers targeting Linux, snaps offer an ideal way to package and distribute applications. Snaps are containerised applications that work on desktops, cloud,
and IoT devices.
- They are simple to create and install, safe to run, and update automatically. And because snaps are packaged with all their dependencies, they work on all major Linux systems without modification.

## Hardware and software freedom

- The level of hardware and software support is essential for a smooth development process. Without it, developers risk having to spend an inordinate amount of time fixing compatibility issues before they can even make progress on
their applications.
- Ubuntu’s flexibility will help to reduce friction and accelerate development, eliminating issues that might otherwise arise when selecting components and solutions.

## Extensive support – from Canonical and the Ubuntu community

- It doesn’t matter how compelling an operating system’s other features are if developers cannot rely on it to be stable, secure, and continuously updated. That is why Ubuntu LTS (Long Term Support) releases benefit from five years of
support from Canonical – with critical bug fixes, security updates, and hardware enablement – at no cost.
- Ubuntu users can even apply critical kernel security fixes without rebooting their systems thanks to the Canonical Livepatch Service, helping to minimise downtime while maintaining compliance and security.
- And for those seeking to add value to their Ubuntu deployments and achieve a greater level of support and peace of mind, there is the option of Ubuntu Advantage – the commercial support package from Canonical.

## Certified hardware

- Customers can be confident that their PCs will work flawlessly with Ubuntu right out of the box, with no need to spend time on installation.

_I am Linux distro agnostic though. Choices are good. I'll pick the distro that fit our requirements. So, it's not a zero sum competition. Improve or you get left behind :D_
