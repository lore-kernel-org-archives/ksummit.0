Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 100D3B01
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 19:07:10 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0146.hostedemail.com
	[216.40.44.146])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 282E4500
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 19:07:08 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave06.hostedemail.com (Postfix) with ESMTP id B0E70812566A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 01:27:46 +0000 (UTC)
Message-ID: <1508290061.6530.40.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Jani Nikula <jani.nikula@intel.com>, James Bottomley
	<James.Bottomley@HansenPartnership.com>,
	Julia Lawall <julia.lawall@lip6.fr>
Date: Tue, 17 Oct 2017 18:27:41 -0700
In-Reply-To: <87lgkakwa8.fsf@intel.com>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1710091750540.14384@jbgna.fhfr.qr>
	<1507567045.3100.16.camel@HansenPartnership.com>
	<alpine.DEB.2.20.1710091848390.3870@hadrien>
	<1507568189.3100.29.camel@HansenPartnership.com>
	<871sm9plfb.fsf@intel.com>
	<1508163175.7571.2.camel@HansenPartnership.com>
	<8760bfmaoz.fsf@intel.com>
	<1508170057.6530.13.camel@perches.com> <87lgkakwa8.fsf@intel.com>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2017-10-17 at 11:34 +0300, Jani Nikula wrote:
> On Mon, 16 Oct 2017, Joe Perches <joe@perches.com> wrote:
> > On Mon, 2017-10-16 at 17:25 +0300, Jani Nikula wrote:
> > > On Mon, 16 Oct 2017, James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> > > > On Wed, 2017-10-11 at 21:51 +0300, Jani Nikula wrote:
> > > > > On Mon, 09 Oct 2017, James Bottomley <James.Bottomley@HansenPartnersh
> > > > > ip.com> wrote:
> > > > > > 
> > > > > > On Mon, 2017-10-09 at 18:49 +0200, Julia Lawall wrote:
> > > > > > > 
> > > > > > > Do you suggest one big patch, that goes to who?  Or lots of
> > > > > > > little
> > > > > > > patches that go out at once to the individual maintainers of the
> > > > > > > affected code?
> > > > > > 
> > > > > > I was actually thinking we validate the script and if there are no
> > > > > > problems, apply it at -rc1 ... so effectively one big patch.
> > > > > 
> > > > > By -rc1 we (drm in general, drm/i915 in particular) will already have
> > > > > accumulated easily 4-5 weeks' worth of commits for the *next* merge
> > > > > window. Applying treewide stuff to Linus' tree at -rc1 forces a
> > > > > backmerge and potentially conflicts galore
> > > > 
> > > > If we're applying a semantic patch script (and we've verified it works
> > > > well enough to use the script on the -rc1 main tree), couldn't you
> > > > simply apply it to your tree at the same time?
> > > 
> > > If we did, the fixes would show up in a later kernel release. Which is
> > > just fine for us. In other words, just let subsystems and drivers handle
> > > this as they see fit?
> > 
> > Scheduling and acceptance rates are the issue.
> > 
> > Also some scripted patches require complete treewide
> > application to allow things like API changes.
> 
> As described in https://lwn.net/Articles/735468/ we have a pretty
> extensive and growing CI system in place. We don't apply a single patch
> without a pre-merge green light from CI, no exceptions. I take issue
> with applying any patches to our driver that didn't go through our CI
> first, let alone bypassing our repositories.
> 
> If an API change requires a flag day treewide change in a 15M+ line
> hierarchically developed codebase, you're just plain doing it wrong.

THe size of the codebase is not particularly relevant and
that's simply not always possible.
