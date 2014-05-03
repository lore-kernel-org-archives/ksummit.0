Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 528BE8B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 17:30:41 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B87361FA9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 17:30:39 +0000 (UTC)
Message-ID: <1399138237.2505.7.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Josh Boyer <jwboyer@fedoraproject.org>
Date: Sat, 03 May 2014 10:30:37 -0700
In-Reply-To: <CA+5PVA7VQzdMRuMARmAR=c6MnDg-bFg16Hgk=bCNzKmokRUAPQ@mail.gmail.com>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com> <1399051229.2202.49.camel@dabdike>
	<20140502173309.GB725@redhat.com>
	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>
	<5363E8E1.9030806@zytor.com>
	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>
	<20140502193314.GA24108@thunk.org> <20140502194935.GA9766@redhat.com>
	<20140502204141.GB24108@thunk.org> <20140502210123.GA13536@redhat.com>
	<CA+5PVA6oTQy5j1XyQG_h6Vk1kW8UrA_j61ouPfm_kvZMQ9ZqEA@mail.gmail.com>
	<1399066024.2202.72.camel@dabdike>
	<CA+5PVA7VQzdMRuMARmAR=c6MnDg-bFg16Hgk=bCNzKmokRUAPQ@mail.gmail.com>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
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

Apologies for not seeing this.  Apparently this list is set up with
nodupes as the default and I have mail rules trashing personal copies of
mail I'm supposed to get from the list

On Fri, 2014-05-02 at 17:39 -0400, Josh Boyer wrote:
> On Fri, May 2, 2014 at 5:27 PM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > to separate Linux secure boot policy from Microsoft's binary signing
> > requirements which might take some of the heat out of the arguments
> > about which parts of the patch are to please microsoft and refocus the
> > debate towards how we make better use of secure boot.  I'll try and
> > ensure that either the proposals are public by KS or that we have
> > permission to share the details.
> 
> The objectionable parts having to do with signing aren't even in the
> patchset Matthew has posted.  That's the initial set he tried to get
> pulled in and failed.  If the proposal drastically changes that
> approach I'd be surprised (maybe pleasantly).

Some of the objections are rooted in the suspicions that what we do, we
do to please Microsoft (or at least to get them not to blacklist our
signatures) others are simply based on the idea that secure boot isn't,
because Microsoft designed it wrongly, so we shouldn't call it secure.

Removing the Microsoft proxy allows us to have a more honest debate
about how we want to make use of the capability. I'm not saying it
produces immediate agreement because there's plenty of stuff we have
disagreements over that aren't rooted in suspicions of ulterior motives,
but at least we'll be disagreeing about real issues.

James
