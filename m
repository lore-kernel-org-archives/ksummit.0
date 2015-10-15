Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DB9CD67
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 00:17:09 +0000 (UTC)
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 26A9010E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 00:17:09 +0000 (UTC)
Received: by wicgb1 with SMTP id gb1so5943304wic.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 17:17:07 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 14 Oct 2015 17:17:07 -0700
Message-ID: <CAPcyv4j44fE1BFFdRyLmaaF+CTJsMtaNC_=jN9+hqPCGGwXnsQ@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] ZONE_DEVICE and Persistent Memory (was: Re: Draft
 agenda for the kernel summit)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Oct 12, 2015 at 12:01 PM, Theodore Ts'o <tytso@mit.edu> wrote:
> This is an initial draft for the upcoming kernel summit.
>
> It is still very drafty; in particular, just because a topic has been
> listed, it may turn out that the topic has been resolved off-line, or
> otherwise overtaken by events, in which case we will drop it.  In
> addition, we're also in the process of sending queries to the proposed
> topic leaders to see if they are willing to kick off the discussion,
> and so that is subject to change as well.
>
> I'd appreciate comments about any topics that you think might be
> missing and that would be worth our discussing.

I am wondering if it would be productive / good use of time to do a
direction check on the mm changes being done in support of large
persistent memory devices.  The new ZONE_DEVICE mm-zone was added in a
basic form in 4.3 [1].  The follow-on patches to make use of it have
not enjoyed much feedback to date, especially compared to the debate
that occurred when removing struct page from the block-layer was being
considered [2].

I'm assuming either the new approach is sufficiently non-controversial
and this is just normal patch review latency, or there are some
brewing discussion topics that might make forward progress in person.
One example might be unintended usages of devm_memremap_pages() as
some are experimenting with it to enable peer-to-peer PCI-E transfers.
Another might be the future of the effort to reduce the usage of, or
redefine, struct page.

[1]: https://git.kernel.org/cgit/linux/kernel/git/nvdimm/nvdimm.git/tag/?id=libnvdimm-for-4.3
[2]: https://lists.01.org/pipermail/linux-nvdimm/2015-May/000748.html
