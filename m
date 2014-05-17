Return-Path: <darren@apps.dvhart.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 35A496FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 00:32:05 +0000 (UTC)
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C09EA2022C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 00:32:04 +0000 (UTC)
Received: by mail-pa0-f48.google.com with SMTP id rd3so3196982pab.21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 17:32:04 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
Message-ID: <1400286766.9575.18.camel@wasp-deb.dvhart.com>
From: Darren Vincent Hart <darren@dvhart.com>
To: Olof Johansson <olof@lixom.net>
Date: Fri, 16 May 2014 17:32:46 -0700
In-Reply-To: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Driver model/resources, ACPI, DT,
	etc (sigh)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2014-05-02 at 14:42 -0700, Olof Johansson wrote:
> I'm about as tired of this as everybody else, but that won't make the
> issues go away...
> 
> I think we resolved a bunch of stuff around DT last year (and since),
> but there are still things left to figure out and agree on in these
> areas. In particular in the intersection of Intel platforms with ACPI
> and embedded are where there are issues and model mismatches, and
> doing it in person might be much easier than doing centithreads.
> There's been some various hallway talk at conferences about proposals
> to make this work better, but the full set of people have never been
> in the same room at the same time.
> 
> I labelled this as a tech topic. Feel free to upgrade it to a workshop
> or relabel it if needed. Base set of people I'd like to see involved
> are:
> 
> * Darren Hart, who is doing things to make ACPI more DT-like for
> embedded use cases.

I've been buried, so I apologize for not being able to respond until
now. I'm very interested in participating, and will start catching up
and responding now.

> * Rafael Wysocki, who also has had some ideas on how to make the
> models fit together.

Maybe this is obvious, but Rafael and I are working very closely
together on this from the Intel perspective.

> * Grant Likely, since he's in the intersection as well.
> * Greg K-H would be much appreciated as well, since he'd have to deal
> with some of the resulting mess.
> * Dave Woodhouse would also be good to have there.

David as well as H. Peter Anvin have also been working closely with
Rafael and I.

> 
> .. I'm probably missing names but they're bound to reply to this email
> anyway with opinions.

I saw Al Stone and Linus W. later in the dialog, so I think you have a
good list.

Matthew Garrett offered some valuable insight here in Edinburgh last
year, I imagine he would still want to be involved, although has been
fairly quiet on the subject. 

> 
> 
> Some of the ideas I have heard discussed are:
> * Adding a new common API for resource management which will have
> backends for ACPI or DT depending on platform
> * Adding ACPI and DT probing to drivers that lack on or the other
> today (giving them a total of three probe methods: platform_device,
> DT, ACPI).

Both of the above are the direction we have been exploring.

We should of course include the ACPI Device Properties (_PRP -> now
_DSD) mechanism in here, which I'm sure Rafael and others have already
brought up. I'll follow-up with any technical discussion under those
responses.

> * Converting either of them to use platform device model
> (platform_data) to register drivers, and leave them unaware of either
> hardware description

I've heard this proposed elsewhere and while the platform device model
can certainly be used, if we want to have self-enumerating
hardware/firmware, that would mean moving the parameterization outside
of the driver - which doesn't make sense to me from an encapsulation
perspective. Board files are what they are, but if we are going to
create pdata structures from firmware descriptions, that translation
should occur in the driver where the domain knowledge is.

That's my high-level interest / position here. I'll follow-up now on the
already very active discussion :-)


> * [... I'm likely missing something here as well]
> 
> All solutions above have trade-offs, and neither is an obvious choice.
> We could likely spend between now and KS arguing this every day on the
> lists if we wanted to. Getting the people into the same room for a
> couple of hours is likely to be a much better way to resolve it.
> 
> 
> -Olof

Thank you for proposing this Olof.

-- 
Darren Hart
Intel Open Source Technology Center
