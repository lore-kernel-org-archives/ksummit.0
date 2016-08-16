Return-Path: <mst@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5B9CE89C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Aug 2016 02:38:40 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1CBA2162
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Aug 2016 02:38:40 +0000 (UTC)
Date: Tue, 16 Aug 2016 05:38:36 +0300
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20160816053714-mutt-send-email-mst@kernel.org>
References: <20160729075039.GA26402@x>
	<20160815125309.GA21566@jhogan-linux.le.imgtec.org>
	<20160815163443.kpyrgf3fuvmyyx7h@x>
	<20160815184646.GU19514@jhogan-linux.le.imgtec.org>
	<20160815213536.f5aq7afgu7bcsrsq@x>
	<20160815220647.GW19514@jhogan-linux.le.imgtec.org>
	<20160815235921.GA13874@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160815235921.GA13874@cloud>
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

On Mon, Aug 15, 2016 at 04:59:21PM -0700, Josh Triplett wrote:
> (I also changed rebase itself to not do
> redundant rebases; if the base hasn't changed, a non-interactive rebase
> has nothing to do.)
> 
> - Josh Triplett

It's actually a minor bug in git rebase that --autosquash has
no effect unless -i is supplied. With --autosquash rebase
with an unchanged base could in theory do something useful
even without -i.

-- 
MST
