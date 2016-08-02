Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EC5D678D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 23:11:52 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 41386AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 23:11:52 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Mark Brown <broonie@kernel.org>
Date: Wed, 03 Aug 2016 01:17:03 +0200
Message-ID: <3268954.rXb0BJAX6c@vostro.rjw.lan>
In-Reply-To: <20160802153400.GD10376@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<871t27s1i8.fsf@intel.com> <20160802153400.GD10376@sirena.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday, August 02, 2016 04:34:00 PM Mark Brown wrote:
> On Tue, Aug 02, 2016 at 05:12:47PM +0300, Jani Nikula wrote:
> 
> > Generally adding cc: stable is like, this is clearly a fix to a bug that
> > is present in stable kernels, and the bug should be fixed, but I have no
> > idea nor resources to review or test if this is the right fix across all
> > stable kernels. You end up relying on your gut feeling too much to be
> > comfortable. You have to make the call too early in the process.
> 
> I think the problems here are more in the process of how things go from
> being tagged stable to appearing in a stable release - the QA or lack
> thereof and so on.  While I do share some of your misgivings here I do
> also really like the fact that it's really easy for people to push
> things out for the attention of those working on backports.  It's
> essentially the same as the question I often find myself asking people
> who don't upstream - "why would this fix not benefit other users?".

Agreed, and I think that's exactly where the expectations don't match what's
delivered in the long-term-stable trees.

It should be made clear that "stable" doesn't mean "no regressions".  What
it reall means is "hey, if you care about backports, this is the stuff to take
into consideration in the first place".

Thanks,
Rafael
