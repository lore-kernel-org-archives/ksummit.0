Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0DAD5B68
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 11:43:44 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8ADC5108
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 11:43:43 +0000 (UTC)
Date: Thu, 9 Jul 2015 13:25:10 +0200
From: Jan Kara <jack@suse.cz>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20150709112510.GD2900@quack.suse.cz>
References: <alpine.LNX.2.00.1507071340480.10183@pobox.suse.cz>
	<9412727.0bKgPF9YKr@vostro.rjw.lan>
	<alpine.LNX.2.00.1507081015120.10183@pobox.suse.cz>
	<119701572.LaCIUMEEyV@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <119701572.LaCIUMEEyV@vostro.rjw.lan>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] giving freezer well-defined
 semantics
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed 08-07-15 23:55:09, Rafael J. Wysocki wrote:
> On Wednesday, July 08, 2015 10:16:39 AM Jiri Kosina wrote:
> > On Wed, 8 Jul 2015, Rafael J. Wysocki wrote:
> > 
> > > OK, it is necessary to ensure that the contents of the image will be 
> > > consistent with the state of filesystems on the storage media, so 
> > > everything that may change that state should be "frozen" before the 
> > > image is created, but "frozen" in terms of "no persistent state changes 
> > > from now on" rather than in terms of "no forward progress from now on".
> > 
> > Yeah. So again, why do we even have freezer for so many kernel threads at 
> > all? :)
> 
> Well, one reason may be that we've never grown a decent mechanism for freezing
> filesystems (as in "no persistent state changes from now on") and people try to
> make up for that by stopping things if they can (but in the kernel space that's
> inherently racy).

The most common filesystems - xfs, ext4, ext3, btrfs - handle freezing fine
these days. And the filesystem freezing is used by LVM snapshots,
Virtualization guest snapshots etc. so it is even tested ;).

I know you have proposed to use fs freezing during hibernation some time
ago but I don't remember where it ended up... Do you remember?

								Honza
-- 
Jan Kara <jack@suse.cz>
SUSE Labs, CR
