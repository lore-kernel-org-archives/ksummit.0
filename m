Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B773425A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Nov 2018 20:55:58 +0000 (UTC)
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
	[209.85.167.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B2A3A8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Nov 2018 20:55:57 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id x23so14023690oix.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Nov 2018 12:55:57 -0800 (PST)
MIME-Version: 1.0
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<20181125105754.GB25471@amd>
In-Reply-To: <20181125105754.GB25471@amd>
From: Dan Williams <dan.j.williams@intel.com>
Date: Sun, 25 Nov 2018 12:55:45 -0800
Message-ID: <CAPcyv4jmTUJFUWL99OCxAofhD6=jfZk+SA02sceAaJ0Q9X_=jA@mail.gmail.com>
To: Pavel Machek <pavel@ucw.cz>
Content-Type: text/plain; charset="UTF-8"
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>, zwisler@kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-nvdimm <linux-nvdimm@lists.01.org>,
	Greg KH <gregkh@linuxfoundation.org>, stfrench@microsoft.com,
	Vishal L Verma <vishal.l.verma@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>, "Tobin C. Harding" <me@tobin.cc>
Subject: Re: [Ksummit-discuss] [RFC PATCH 0/3] Maintainer Handbook:
	Subsystem Profile
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Nov 25, 2018 at 2:58 AM Pavel Machek <pavel@ucw.cz> wrote:
>
> On Wed 2018-11-14 20:53:13, Dan Williams wrote:
> > At a recently concluded session at the Linux Plumbers Conference I
> > proposed a "Subsystem Profile" as a document that a maintainer can
> > provide to set contributor expectations and provide fodder for a
> > discussion between maintainers about the merits of different maintainer
> > policies.
> >
> > For those that did not attend, the goal of the Subsystem Profile, and the
> > Maintainer Handbook more generally, is to provide a desk reference for
> > maintainers both new and experienced. The session introduction was:
> >
> >     The first rule of kernel maintenance is that there are no hard and
> >     fast rules. That state of affairs is both a blessing and a curse. It
> >     has served the community well to be adaptable to the different
> >     people and different problem spaces that inhabit the kernel
> >     community. However, that variability also leads to inconsistent
> >     experiences for contributors, little to no guidance for new
> >     contributors, and unnecessary stress on current maintainers. There
> >     are quite a few of people who have been around long enough to make
> >     enough mistakes that they have gained some hard earned proficiency.
> >     However if the kernel community expects to keep growing it needs to
> >     be able both scale the maintainers it has and ramp new ones without
> >     necessarily let them make a decades worth of mistakes to learn the
> >     ropes.
> >
> > To be clear, the proposed document does not impose or suggest new
> > rules. Instead it provides an outlet to document the unwritten rules
> > and policies in effect for each subsystem, and that each subsystem
> > might decide differently for whatever reason.
>
> Sounds like a new rules to me :-(, making submitting simple patches
> harder.

I'm missing how documenting how a subsystem generally handles patches
makes submitting simple patches harder?

> It would be good if the rules were similar / same accross the
> subsystems, documenting "it is okay to be different" is not really helpful.

It is not documenting "it is okay to be different", it is
acknowledging that processes are already different. The goals are to
allow comparing notes across subsystems with the hope of some
convergence down the road, provide a template for new maintainers to
copy rather than reinvent, and give submitters a resource to discover
subsystem local policy.
