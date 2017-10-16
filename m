Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D3856BC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 14:12:57 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E4D8E4D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 14:12:56 +0000 (UTC)
Message-ID: <1508163175.7571.2.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jani Nikula <jani.nikula@intel.com>, Julia Lawall <julia.lawall@lip6.fr>
Date: Mon, 16 Oct 2017 07:12:55 -0700
In-Reply-To: <871sm9plfb.fsf@intel.com>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1710091750540.14384@jbgna.fhfr.qr>
	<1507567045.3100.16.camel@HansenPartnership.com>
	<alpine.DEB.2.20.1710091848390.3870@hadrien>
	<1507568189.3100.29.camel@HansenPartnership.com>
	<871sm9plfb.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"
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

On Wed, 2017-10-11 at 21:51 +0300, Jani Nikula wrote:
> On Mon, 09 Oct 2017, James Bottomley <James.Bottomley@HansenPartnersh
> ip.com> wrote:
> > 
> > On Mon, 2017-10-09 at 18:49 +0200, Julia Lawall wrote:
> > > 
> > > Do you suggest one big patch, that goes to who?  Or lots of
> > > little
> > > patches that go out at once to the individual maintainers of the
> > > affected code?
> > 
> > I was actually thinking we validate the script and if there are no
> > problems, apply it at -rc1 ... so effectively one big patch.
> 
> By -rc1 we (drm in general, drm/i915 in particular) will already have
> accumulated easily 4-5 weeks' worth of commits for the *next* merge
> window. Applying treewide stuff to Linus' tree at -rc1 forces a
> backmerge and potentially conflicts galore

If we're applying a semantic patch script (and we've verified it works
well enough to use the script on the -rc1 main tree), couldn't you
simply apply it to your tree at the same time?

James

>  I'm not particularly thrilled about. I'd much rather see the patches
> to our driver come through our tree, and we generally deal with them
> without a fuss.
> 
> BR,
> Jani.
> 
> 
