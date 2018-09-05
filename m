Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B15E4157A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 16:39:25 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 536F57A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 16:39:25 +0000 (UTC)
Message-ID: <1536165561.3627.15.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jiri Kosina <jikos@kernel.org>
Date: Wed, 05 Sep 2018 17:39:21 +0100
In-Reply-To: <nycvar.YFH.7.76.1809051437300.15880@cbobk.fhfr.pm>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
	<nycvar.YFH.7.76.1809051437300.15880@cbobk.fhfr.pm>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2018-09-05 at 14:53 +0200, Jiri Kosina wrote:
> On Wed, 5 Sep 2018, James Bottomley wrote:
> 
> > The rule should be: if it doesn't fix a user visible bug, it
> > doesn't go 
> > into stable.
> 
> So I just looked at the latest (and newest) stable 4.18.5. It
> contains 22
> patches:
> 
> 	$ grep "commit [a-f0-9]\+ upstream" ChangeLog-4.18.5
> 	    commit a13f085d111e90469faf2d9965eb39b11c114d7e upstream.
> 	    commit bed4ff1ed4d8f2ef5007c5c6ae1b29c5677a3632 upstream.
> 	    commit c463a158cb6c5d9a85b7d894cd4f8116e8bd6be0 upstream.
> 	    commit 1204e35bedf4e5015cda559ed8c84789a6dae24e upstream.
> 	    commit 281e878eab191cce4259abbbf1a0322e3adae02c upstream.
> 	    commit 3dbe97efe8bf450b183d6dee2305cbc032e6b8a4 upstream.
> 	    commit 91a2968e245d6ba616db37001fa1a043078b1a65 upstream.
> 	    commit 4ce6435820d1f1cc2c2788e232735eb244bcc8a3 upstream.
> 	    commit 9d64b539b738fc181442caab95f1f76d9bd58539 upstream.
> 	    commit d3252ace0bc652a1a244455556b6a549f969bf99 upstream.
> 	    commit 7797167ffde1f00446301cb22b37b7c03194cfaf upstream.
> 	    commit 3b885ac1dc35b87a39ee176a6c7e2af9c789d8b8 upstream.
> 	    commit ddf74e79a54070f277ae520722d3bab7f7a6c67a upstream.
> 	    commit de5372da605d3bca46e3102bab51b7e1c0e0a6f6 upstream.
> 	    commit 1a5d5e5d51e75a5bca67dadbcea8c841934b7b85 upstream.
> 	    commit 6d44acae1937b81cf8115ada8958e04f601f3f2e upstream.
> 	    commit c40a56a7818cfe735fc93a69e1875f8bba834483 upstream.
> 	    commit 6ea2738e0ca0e626c75202fb051c1e88d7a950fa upstream.
> 	    commit 9f515cdb411ef34f1aaf4c40bb0c932cf6db5de1 upstream.
> 	    commit 0d83432811f26871295a9bc24d3c387924da6071 upstream.
> 	    commit 36ecc1481dc8d8c52d43ba18c6b642c1d2fde789 upstream.
> 	    commit b748f2de4b2f578599f46c6000683a8da755bf68 upstream.
> 
> Just randomly scrolling through those, I am wondering how at least
> 
> 	7797167ffde1f00446301cb22b37b7c03194cfaf
> 	3b885ac1dc35b87a39ee176a6c7e2af9c789d8b8
> 
> made it past any stable tree acceptance criteria.
> 
> They are memory ordering changes (so exactly area which is generally 
> fragile by itself and the risk of regressions simply can't be
> completely ignored), yet they fix absolutely no functional issue.
> 
> In addition to that, they all exist upstream only for one single -rc,
> so the public testing exposure is also currently minimal.
> 
> Yeah, I know I know, those are parisc, so noone cares anyway :P but
> that's really just the first randomly chosen kernel, with a small
> number of patches, and still 10% of them are something we'd not want
> to put into an enterprise distro kernel without a lot of
> justification and regression testing.

[puts PA-RISC hat on]

The maintainers believe these two patches will fix a persistent
segmentation fault problem that's blocking forward progress on the
debian parisc port.  So, given the parisc specificity of the patches
and the maintainer input, I very much think they fit the criteria.

James
