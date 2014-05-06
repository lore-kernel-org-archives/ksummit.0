Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 61B7B82A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 17:18:14 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6C1C6201A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 17:18:13 +0000 (UTC)
Date: Tue, 6 May 2014 10:18:07 -0700
From: josh@joshtriplett.org
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20140506171807.GA20776@cloud>
References: <5363E8E1.9030806@zytor.com>
	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
	<20140502193314.GA24108@thunk.org>
	<20140502194935.GA9766@redhat.com>
	<20140502204141.GB24108@thunk.org>
	<20140502210123.GA13536@redhat.com>
	<CA+5PVA6oTQy5j1XyQG_h6Vk1kW8UrA_j61ouPfm_kvZMQ9ZqEA@mail.gmail.com>
	<1399066024.2202.72.camel@dabdike>
	<CA+5PVA7VQzdMRuMARmAR=c6MnDg-bFg16Hgk=bCNzKmokRUAPQ@mail.gmail.com>
	<CALCETrVZJ5swLixykH_qn4K7GDDRqKkXtPeJqdM1LXToRW+uyA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrVZJ5swLixykH_qn4K7GDDRqKkXtPeJqdM1LXToRW+uyA@mail.gmail.com>
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Sarah Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 02, 2014 at 03:35:28PM -0700, Andy Lutomirski wrote:
> On Fri, May 2, 2014 at 2:39 PM, Josh Boyer <jwboyer@fedoraproject.org> wrote:
> > On Fri, May 2, 2014 at 5:27 PM, James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote:
> >> On Fri, 2014-05-02 at 17:19 -0400, Josh Boyer wrote:
> >>> On Fri, May 2, 2014 at 5:01 PM, Dave Jones <davej@redhat.com> wrote:
> >>> > On Fri, May 02, 2014 at 04:41:41PM -0400, Theodore Ts'o wrote:
> >>> >
> >>> >  > And I think we can also further break this down into the classes of
> >>> >  > code which require root privs (i.e., like kexec), and those which can
> >>> >  > be used by any userid.
> >>> >
> >>> > In the brave new world of secure boot, we kind of have to care about
> >>> > even the root cases now too [*], but I agree in the general case.
> >>>
> >>> Speaking of that... is it worth my time to propose a "What to do about
> >>> the secure_modules/trusted_kernel/whatever patch set that distros are
> >>> carrying to support Secure Boot?  I thought we had agreement and a
> >>> path forward at LPC last year, but things seem to have gotten derailed
> >>> again.
> >>
> >> Would you believe we're just discussing with the distros how we might
> >> re-engineer the Linux secure boot process.  Unfortunately the details
> >
> > I would believe it.
> >
> >> depend on a UEFI forum proposal that are UEFI confidential at this time,
> >> but you can probably pick them up from Peter Jones, since you're a Red
> >> Hat employee.  One of the side effects of this, if it happens, will be
> >
> > OK.
> >
> >> to separate Linux secure boot policy from Microsoft's binary signing
> >> requirements which might take some of the heat out of the arguments
> >> about which parts of the patch are to please microsoft and refocus the
> >> debate towards how we make better use of secure boot.  I'll try and
> >> ensure that either the proposals are public by KS or that we have
> >> permission to share the details.
> >
> > The objectionable parts having to do with signing aren't even in the
> > patchset Matthew has posted.  That's the initial set he tried to get
> > pulled in and failed.  If the proposal drastically changes that
> > approach I'd be surprised (maybe pleasantly).
> 
> FWIW, I really don't like the approach where we say that the kernel
> must be inviolate but that user code can do whatever it likes as long
> as the kernel isn't compromised.  This may be needed to comply with
> current MS/UEFI policy, but I think it largely misses the point wrt
> actual security.
> 
> If the policy can change, then that might be a huge win.

We shouldn't give up on securing userspace, either; protecting the
kernel is necessary but not sufficient.  But I do think it's worthwhile
to enforce "root != kernel", quite apart from any "secure boot"
requirements.  That's what Matthew's patches primarily serve to do: make
root not kernel-equivalent.

- Josh Triplett
