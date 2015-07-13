Return-Path: <jiangshanlai@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6BDF8BC7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 17:05:17 +0000 (UTC)
Received: from mail-ig0-f193.google.com (mail-ig0-f193.google.com
	[209.85.213.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 005C1110
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 17:05:14 +0000 (UTC)
Received: by igbc1 with SMTP id c1so6565704igb.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 10:05:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201507130038.01474.PeterHuewe@gmx.de>
References: <201507130038.01474.PeterHuewe@gmx.de>
Date: Tue, 14 Jul 2015 01:05:14 +0800
Message-ID: <CAJhGHyDGLKvGTxu=oFDVZqo0oW-TX_WcA-qX0v+UWtyuVZVf=Q@mail.gmail.com>
From: Lai Jiangshan <jiangshanlai@gmail.com>
To: =?UTF-8?Q?Peter_H=C3=BCwe?= <PeterHuewe@gmx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE-TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 13, 2015 at 6:38 AM, Peter H=C3=BCwe <PeterHuewe@gmx.de> wrote:
>
> Hi,
>
> as we talked about recruiting in the other thread I realized that one thi=
ng
> that might reduce the entrance barrier a bit (apart from tooling and flow=
)
> would be proper documentation.
>
> I know documenation is usually not a developers most favorite task, but h=
ere
> are my findings anyway:

Hi, all

Comparing to the documents of functions, some other kinds of documents
might be more important but even seldom.

First, documents of why/what/how.
- Why the functionality/subsystem/structure/function/marco is needed?
- what is it
- How to implement it.

These documents are less and sometimes they are hidden in changelog.
why/what/how is suggested in changelog, so I often use git-blame
to fetch them, but it is inconvenient for normal-reviewers when it is
stored outside of kernel_src/Documentation/.

Secondly, documents of architecture/design.
- architecture overview
- architecture for control/data flow

These documents are less and sometimes they don't have proper picture
inside them.  Kernel developers like ascii pictures, but ascii pictures
can't provide enough information with decent density. and it is hard
to draw, to maintain... etc.

I once borrowed the two pictures in the page7/page9 of this:
http://www.linux-kongress.org/2010/slides/KVM-Architecture-LK2010.pdf
and gave 3 hours training to someones.  It helped me showed/remembered the
architecture, the interfaces between the components and the major
structures inside every components.  It would be useful if we also have
sufficient document of this kind in the kernel.

The documents of functions are also the documents of interfaces
between the components, they are important, so I also support for
Peter H=C3=BCwe.

And as noted before, changlog is also document for me, and IDEs(vim)
have the functionality to find the definition/usage, I also hope they
have the functionality to "find the changelog of this line".

Thanks,
Lai

>
>
>
> I had a quick look into our guideline (Documentation/kernel-doc-nano-
> HOWTO.txt) and it states:
>
> 1)
> > We definitely need kernel-doc formatted documentation for functions
> > that are exported to loadable modules using EXPORT_SYMBOL.
> This is definitely not the case at the moment :/ -- there are a lot of
> undocumented EXPORT_SYMBOL functions.
>
> 2)
> > We also look to provide kernel-doc formatted documentation for
> > functions externally visible to other kernel files (not marked
> > "static").
> Even less
>
> 3)
> > We also recommend providing kernel-doc formatted documentation
> > for private (file "static") routines, for consistency of kernel
> > source code layout.  But this is lower priority and at the
> > discretion of the MAINTAINER of that kernel source file.
> Don't even talk about that :)
>
>
> Imho new code should definitely have this documentation, especially for #=
1 and
> #2 -- but maybe even for #3.
>
>
>
>
> So this leads me to following questions:
> - How can we easily identify missing documentation?
> -- Maybe Julia can come up with some coccinelle magic?
> -- Maybe even mark non-extractable documentation and convert it.
> -- In the document it mentions scripts/basic/doproc.c checks for missing
> documentation, but this file does not exist anymore :/
>
>
>
>
> - how can we (automatically) support documentation?
> -- Can / should we create a tool that annotates functions and data types =
with
> a template documentation (I know good editors do something similar, but i=
s the
> proposed style in concordance with the kernel doc style? At least it look=
s
> quite a lot like doxygen?)
>
> - How different is the kernel doc style to doxygen?
>
>
> - We are constantly looking for tasks newcomers can take on -- writing
> appropriate documentation is usually not that hard on the one hand and on=
 the
> other people will learn a lot about the code they are documenting.
> -- maybe make it easier make use of Steven Rostedts proposed Kernel Patch
> submitting web form :P
>
> - new checkpatch option for checking the existance of documentation? *duc=
ks
> and runs away*
>
>
> - and who would be in to join me in documenting everything :P
>
>
> Thanks,
> Peter
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
