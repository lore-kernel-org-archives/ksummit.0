Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9C8F571
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 03:50:43 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0DEBE235
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 03:50:42 +0000 (UTC)
Date: Thu, 28 Jul 2016 20:50:55 -0700
From: Greg KH <greg@kroah.com>
To: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <20160729035055.GA32225@kroah.com>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727172636.GM11806@sirena.org.uk>
	<20160727175829.GG5537@wotan.suse.de> <579A7DFD.60305@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <579A7DFD.60305@metafoo.de>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 28, 2016 at 11:49:49PM +0200, Lars-Peter Clausen wrote:
> On 07/27/2016 07:58 PM, Luis R. Rodriguez wrote:
> > On Wed, Jul 27, 2016 at 06:26:36PM +0100, Mark Brown wrote:
> >>> to help enable asynchronous probe, however for built-in devices this requires
> >>> very specific platform knowledge otherwise using async probe will blow up
> >>> your kernel -- if you get it right though, using async probe can help with
> >>
> >> I'm not sure what specific platform knowledge you're thinking of here?
> >> We have coverage for most things in the form of deferred probe (messy
> >> though it is).
> > 
> > Deferred probe is a complete a hack and sub-optimal.

It's the best hack that people have come up with to solve the problem so
far.

> I fully agree. In the past though there were a few good attempts of
> providing something better than probe deferral, but those were always
> quickly shutdown by GregKH for failing to prove that probe deferral
> really is insufficient.
> 
> This probably an issue of presentation, but for future attempts it
> should be kept in mind that hard numbers on why this is better greatly
> improve the chance of it being accepted.

If you don't have such numbers, why should I ever accept any changes?
You need to show a benefit of code, otherwise you are just pointless
churning things for no reason.

And also, don't try presenting patches that force every driver or
subsystem to be changed for no good reason, that's one reason I have
shot down patches in this area as well.

good luck!

greg k-h
