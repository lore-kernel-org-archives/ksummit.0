Return-Path: <mst@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0769726C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 23:42:16 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 734D2165
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 23:42:15 +0000 (UTC)
Date: Tue, 16 Aug 2016 02:42:12 +0300
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20160816023559-mutt-send-email-mst@kernel.org>
References: <20160729075039.GA26402@x>
	<20160805021426-mutt-send-email-mst@kernel.org>
	<20160805202615.lpnrhi2lswz24iny@x>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160805202615.lpnrhi2lswz24iny@x>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [ANNOUNCE] git-series: track changes to a
 patch series over time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 05, 2016 at 10:26:15AM -1000, Josh Triplett wrote:
> On Fri, Aug 05, 2016 at 02:52:18AM +0300, Michael S. Tsirkin wrote:
> > On Fri, Jul 29, 2016 at 12:50:39AM -0700, Josh Triplett wrote:
> > > I'd welcome any feedback, whether on the interface and workflow, the
> > > internals and collaboration, ideas on presenting diffs of patch series,
> > > or anything else.
> > 
> > Hi Josh!
> > A couple of ideas, I hope these will be helpful:
> > 
> > I often need to move series between unrelated trees.
> > I sometimes use cherry-pick for that (if they are from my tree)
> > or am (if not).
> > 
> > How about "git series am" - get patch series from email,
> > including a cover letter, and create a series from that?
> 
> Would you expect to feed this one mbox containing all the mails, or a
> set of files containing one patch each (including the 0000 cover
> letter), or both?

If piping from mutt, a set of files. If saving to an mbox
from mutt and piping from command line, one mbox.
So both.

> > And how about "git series cherry-pick" - to apply
> > series to the current head?
> 
> Could you elaborate on the semantic of this?  You have a series in your
> tree, and you want to take all the patches in the series and apply them
> to HEAD?  Or, do you want to copy the series and rebase the copy on HEAD?


What I had in mind is that I might have multiple patchsets under test
on an unstable branch X.
Now I decide to copy one patchset to the stable branch.

With a single patch I would just cherry-pick.




> For the former, once I add support for formatting a series other than
> the current one, you could do that with "git series format seriesname
> --stdout | git am".

Yes, except cherry-pick has the -x flag to track where did
I get the patch from. And I would like this info recorded
for the cover as well. Maybe format can export that info.
In fact this might be a handy flag for format-patch too:

ability to add (cherry-picked from commit XYZ "subject")

automatically.

> > Kind of going in the reverse direction from git series format.
> 
> I like the idea; I'd like to offer more "import" mechanisms for any
> other patch-series format people find useful.
> 
> - Josh Triplett
