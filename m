Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6BB10724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 20:26:22 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D75932FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 20:26:21 +0000 (UTC)
Date: Fri, 5 Aug 2016 10:26:15 -1000
From: Josh Triplett <josh@joshtriplett.org>
To: "Michael S. Tsirkin" <mst@redhat.com>
Message-ID: <20160805202615.lpnrhi2lswz24iny@x>
References: <20160729075039.GA26402@x>
	<20160805021426-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160805021426-mutt-send-email-mst@kernel.org>
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

On Fri, Aug 05, 2016 at 02:52:18AM +0300, Michael S. Tsirkin wrote:
> On Fri, Jul 29, 2016 at 12:50:39AM -0700, Josh Triplett wrote:
> > I'd welcome any feedback, whether on the interface and workflow, the
> > internals and collaboration, ideas on presenting diffs of patch series,
> > or anything else.
> 
> Hi Josh!
> A couple of ideas, I hope these will be helpful:
> 
> I often need to move series between unrelated trees.
> I sometimes use cherry-pick for that (if they are from my tree)
> or am (if not).
> 
> How about "git series am" - get patch series from email,
> including a cover letter, and create a series from that?

Would you expect to feed this one mbox containing all the mails, or a
set of files containing one patch each (including the 0000 cover
letter), or both?

> And how about "git series cherry-pick" - to apply
> series to the current head?

Could you elaborate on the semantic of this?  You have a series in your
tree, and you want to take all the patches in the series and apply them
to HEAD?  Or, do you want to copy the series and rebase the copy on HEAD?

For the former, once I add support for formatting a series other than
the current one, you could do that with "git series format seriesname
--stdout | git am".

> Kind of going in the reverse direction from git series format.

I like the idea; I'd like to offer more "import" mechanisms for any
other patch-series format people find useful.

- Josh Triplett
