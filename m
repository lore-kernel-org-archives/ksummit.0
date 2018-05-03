Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5402B8D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 15:27:51 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A3818603
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 15:27:50 +0000 (UTC)
Message-ID: <1525361268.3225.17.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>, Willy Tarreau <w@1wt.eu>
Date: Thu, 03 May 2018 08:27:48 -0700
In-Reply-To: <20180503150608.GM18390@sasha-vm>
References: <20180501163818.GD1468@sasha-vm>
	<20180501194450.GD10479@thunk.org> <20180501200019.GA7397@sasha-vm>
	<20180501205448.GE10479@thunk.org> <877eol808s.fsf@intel.com>
	<1525357984.3225.12.camel@HansenPartnership.com>
	<20180503144850.GC23311@1wt.eu> <20180503150608.GM18390@sasha-vm>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2018-05-03 at 15:06 +0000, Sasha Levin via Ksummit-discuss
wrote:
> On Thu, May 03, 2018 at 04:48:50PM +0200, Willy Tarreau wrote:
> > On Thu, May 03, 2018 at 07:33:04AM -0700, James Bottomley wrote:
> > > They're definitely for bug fixes, but there's a spectrum: obvious
> > > bug fixes with no side effects are easy to justify.  More complex
> > > bug fixes run the risk of having side effects which introduce
> > > other bugs, so could potentially destabilize the -rc process.  In
> > > SCSI we tend to look at what the user visible effects of the bug
> > > are in the post -rc5 region and if they're slight or wouldn't be
> > > visible to most users, we'll hold them over.  If the fix looks
> > > complex and we're not sure we caught the ramifications, we often
> > > add it to the merge window tree with a cc to stable and a note
> > > saying to wait X weeks before actually adding to the
> > > stable tree just to make sure no side effects show up with wider
> > > testing.  So, as with most things, it's a judgment call for the
> > > maintainer.
> > 
> > For me this is the right, and responsible way to deal with bug
> > fixes. Self-control is much more efficient than random rejection
> > and favors a good analysis.
> 
> I think that the ideal outcome of this discussion, at least for me,
> is a tool to go under scripts/ that would allow maintainers to get
> some sort of (quantifiable) data that will indicate how well the
> patch was tested via the regular channels.
> 
> At which point it's the maintainer's judgement call on whether he
> wants to grab the patch or wait for more tests or reviews.
> 
> This is very similar to what James has described, it just needs to
> leave his brain and turn into code :)

I appreciate the sentiment, but if we could script taste, we'd have
replaced Linus with something far less cantankerous a long time ago ...

It's also a sad fact that a lot of things which look like obvious fixes
actually turn out not to be so with later testing.  This is why the
user visibility test is paramount.  If a bug fix has no real user
visible effects, it's often better to defer it no matter how obvious it
looks, which is why the static code checkers often get short shrift
before a merge window.

A script measuring user visibility would be nice, but looks a bit
complex ...

James
