Return-Path: <darren@apps.dvhart.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 19EC4875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 00:23:33 +0000 (UTC)
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7CB6B1FB23
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 00:23:32 +0000 (UTC)
Received: by mail-qc0-f174.google.com with SMTP id c9so5437962qcz.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 02 May 2014 17:23:31 -0700 (PDT)
MIME-Version: 1.0
Sender: darren@apps.dvhart.com
In-Reply-To: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
Date: Fri, 2 May 2014 17:23:31 -0700
Message-ID: <CAGChsmNb17cGaRs9aAWLHz47Wajn7usKiPRH3nT_sBw_Dgr29g@mail.gmail.com>
From: Darren Hart <darren@dvhart.com>
To: Olof Johansson <olof@lixom.net>, Al Stone <al.stone@linaro.org>
Content-Type: text/plain; charset=UTF-8
Cc: "dvhart@dvhart.com" <dvhart@dvhart.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
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

On Fri, May 2, 2014 at 2:42 PM, Olof Johansson <olof@lixom.net> wrote:
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
> * Rafael Wysocki, who also has had some ideas on how to make the
> models fit together.
> * Grant Likely, since he's in the intersection as well.
> * Greg K-H would be much appreciated as well, since he'd have to deal
> with some of the resulting mess.
> * Dave Woodhouse would also be good to have there.

+ Al Stone

-- 
Darren Hart
