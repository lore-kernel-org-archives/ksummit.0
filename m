Return-Path: <damien.lespiau@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 625D6BC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 11:05:40 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E67261A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 11:05:39 +0000 (UTC)
Date: Mon, 13 Jul 2015 12:05:36 +0100
From: Damien Lespiau <damien.lespiau@intel.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Message-ID: <20150713110536.GA25754@strange.ger.corp.intel.com>
References: <201507080121.41463.PeterHuewe@gmx.de> <2102387.OD8sBG4Eol@avalon>
	<559C73DF.2030008@roeck-us.net>
	<CAErSpo622+-3XS=C=EN0S3qi8ZN4aehBmxf58RwyNvNdbgD0cw@mail.gmail.com>
	<CAKMK7uF=0qdE6SHp897C_9JALKQF2aZwnA3VDxpTnM1s-NxwiQ@mail.gmail.com>
	<1436414213.23558.2.camel@ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1436414213.23558.2.camel@ellerman.id.au>
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 09, 2015 at 01:56:53PM +1000, Michael Ellerman wrote:
> On Wed, 2015-07-08 at 21:19 +0200, Daniel Vetter wrote:
> > On Wed, Jul 8, 2015 at 4:20 PM, Bjorn Helgaas <bhelgaas@google.com> wrote:
> > > I wish I knew how to use patchwork better, or had a smarter workflow
> > > that could comprehend a series as a single entity.  Patchwork is a lot
> > > of clicking, but I don't know anything better.
> > 
> > We're working on improving patchwork here to understand series and
> > help out with auto-deprecating patches when new versions show up.
> > Currently being tested internally and we plan to push to upstream ofc
> > and deploy on freedesktop.org (since that's where all the drm/gfx
> > folks hang out), but because of all the things going on it's really
> > slow. Damien knows more, maybe we could push the current state to some
> > git branch somewhere.
> 
> I'd be interested in that if you can publish it somewhere.
> 
> At the moment I have a very hacky script that tries to recognise a series on
> the client, which usually works, but not always.

I have quite a few patches on top of upstream now. It's really a back
burner distraction, so well, I have no ETA to give for when I'd be happy
with the state of this work.

I have a work-in-progress branch here:

  https://github.com/dlespiau/patchwork

What's on there is roughly a re-design of the interface, a new REST API
and parsing/presenting series to the user, not just patches.

I have some more work (unpublished because not quite ready) on top of
this to parse and present new versions/revisions of series when:
  - people post a v2/3/4/... of a patch as a reply to one of the series
  - people post a full new series as a v2/3/4/..

The goal being one series object (with a unique ID for that patchwork
instance) represents the whole life cycle of that work, including
multiple versions.

-- 
Damien
