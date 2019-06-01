Return-Path: <leon@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B103D7F31
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Jun 2019 09:02:29 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 52E3A89B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Jun 2019 09:02:29 +0000 (UTC)
Date: Sat, 1 Jun 2019 12:02:24 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20190601090224.GB5261@mtr-leonro.mtl.com>
References: <20190530060939.GA31454@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190530060939.GA31454@mit.edu>
Cc: Tanish Shinde <tanish.shinde2006@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Anatomy Of The Linux Kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 30, 2019 at 02:09:39AM -0400, Theodore Ts'o wrote:
> From: Tanish Shinde <tanish.shinde2006@gmail.com>
>
> [ Note: The following abstract was submitted via the Linux Plumbers
>   Conference website.  Per the instructions that were posted for the
>   Maintainer's / Kernel Summit Call for Proposals[1], the proposal
>   should also be posted on the ksummit-discuss list, so that people
>   can comment on the proposal, and perhaps start a discussion before
>   the summit.
>
>   [1] https://lwn.net/Articles/788378/
>
>   Please note that topic proposals for both the Kernel Summit and the
>   Maintainer's Summit are still welcome, and the deadline has been
>   extended to June 3rd. -- Ted ]
>
> The Linux kernel is the core of a large and complex operating system, and while it's huge, it is well organized in terms of subsystems and layers. In this talk, the viewer explores the general structure of the Linux kernel and gets to know its major subsystems and core interfaces.
>
> In This Talk We Will Discuss The Following Topics
>
> * The Fundamental Architecture Of Linux
> * System Call Interface & Process Management
> * Memory Management & The Virtual File System
> * Network Stack & Device Drivers
> * Architecture Dependent Code

IMHO, it is far too beginner topic for LPC and definitely for KS too.

>
> This Talk Will Take A Look At The More Base and Core Concepts of
> Linux. We Will Also Discuss Conceptual Architecture and Concrete
> Architecture. This Will Also Serve Refresher Course For Linux
> Enthusiasts and Experts Alike.
>
> This Presentation Will Be Presented At Open Source Summit + KubeCon +
> Cloud Native Con China 2019 and the presentation can be found here
> -https://drive.google.com/file/d/13N3giY_DJkDVy91nVtMwLiIe8dbUiTgZ/view?usp=sharing
>
>
> My Links
>
> https://www.github.com/tanishshinde
> https://www.tanishshinde.com
>
> The Presentation is For Linux Hobbyists, Enthusiasts, Experts To
> Understand The Core and Basic Concept Of Linux as it is as important
> as advanced plumbing topics presented in the conference
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
