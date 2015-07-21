Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C8225475
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 21 Jul 2015 17:35:07 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A4053219
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 21 Jul 2015 17:35:06 +0000 (UTC)
Date: Tue, 21 Jul 2015 19:35:03 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150721173503.GH30479@wotan.suse.de>
References: <20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<1437376105.8968.14.camel@HansenPartnership.com>
	<20150720084420.GA11454@x>
	<1437384215.8968.28.camel@HansenPartnership.com>
	<1437386699.22996.10.camel@infradead.org>
	<1437388227.8968.34.camel@HansenPartnership.com>
	<1437390546.22996.27.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1437390546.22996.27.camel@infradead.org>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>
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

On Mon, Jul 20, 2015 at 12:09:06PM +0100, David Woodhouse wrote:
> On Mon, 2015-07-20 at 11:30 +0100, James Bottomley wrote:
> > Agree ... that's why we need a responsible maintainer, and I believe 
> > it would be an even more onerous task than running the trivial tree.
> 
> I think any scripted change like this would need to come *from* a
> responsible maintainer, not *through* one. I'm not sure we really need
> a 'process' for it other than someone with sufficient credibility
> persuading Linus to run the script.
> 
> Alternatively, it isn't *that* hard for someone like Josh (who was the
> one who said he often finds himself doing this kind of thing) to create
> a git tree which runs the script *regularly* on the tip of Linus' tree
> (or linux-next), creating a new version of the commit which can be
> pulled at that moment.
> 
> Then it should just be case of of asking Stephen to "put this tree last
> in linux-next", and Linus to "pull this one last, right before
> releasing -rc1". And getting the timing right for the script to run.

I ran into quite a bit of delay / coordination through another types of
tree-wide changes recently: tree wide collateral evolutions which affect more
than one subsystem. One of the issues with this is such type of changes
may end up having 1-2 release delays before being complete unless the stars
align and everone can get in sync and agree for all changes to go through
one tree. I'm sure this is not a new thing either, but with tools like
Coccinelle I do suspect the amount of work to do this has reduced and as
such we should be able to more easily make these changes. What I found was
that our pipes were not as smooth to handle these types of changes when
needed, even if everyone was in total agreement.

I proposed a linux-oven tree [0], pricicely as David describes, which can be
used after all trees are merged. So not only would it be useful for scraped
cleanups but also tree wide collateral evolutions which span multiple
subsystems. If such a tree existed and folks knew such maintainer would
go through proper dilligence for testing, review, vetting from maintainers
I think it would make both scripted changes and tree wide collateral evolutions
easier to manage. If done through a separate tree Linus would also not need
to be involved, instread the onus of correcting patches lies on the developers
submitting to the tree and the maintainer.

[0] http://lkml.kernel.org/r/20150619231255.GC7487@garbanzo.do-not-panic.com

  Luis
