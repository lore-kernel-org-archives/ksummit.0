Return-Path: <bgilbert@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 88672CD4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 03:56:42 +0000 (UTC)
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
	[209.85.222.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1F52E2D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 03:56:42 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id d131-v6so6422643qke.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 20:56:42 -0700 (PDT)
Received: from trogon.sfo.coreos.systems
	([2604:2000:80c5:4400:140c:73de:b623:c90])
	by smtp.gmail.com with ESMTPSA id
	c18-v6sm2700328qte.78.2018.09.05.20.56.40
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 05 Sep 2018 20:56:40 -0700 (PDT)
Date: Wed, 5 Sep 2018 23:56:38 -0400
From: Benjamin Gilbert <bgilbert@redhat.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20180906035638.GA8506@trogon.sfo.coreos.systems>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<7e4a1cb8-9f3c-e1ea-e9bd-5f1f3588ce65@roeck-us.net>
	<d1f90b8d-ca88-6c39-471e-898737a8a6ac@redhat.com>
	<20180904231450.GE16300@sasha-vm>
	<bd874e9c-eea9-ec78-e2cf-a00f635c52f7@roeck-us.net>
	<61221bc0-7610-36c6-496e-57b1a0d20eec@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <61221bc0-7610-36c6-496e-57b1a0d20eec@redhat.com>
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

On Tue, Sep 04, 2018 at 06:17:46PM -0700, Laura Abbott wrote:
> On 09/04/2018 04:43 PM, Guenter Roeck wrote:
> > On 09/04/2018 04:14 PM, Sasha Levin wrote:
> >> Maybe some concrete numbers will help here. Do you maybe know how many
> >> commits in the past year snuck past the -rc cycle into a stable release
> >> and found as buggy by Fedora's testing pipeline?
> > 
> > ... and how many bugs were found during the existing test cycle ?
> > 
> > The next question would be how many regressions were reported by users
> > after a release was published.
> > 
> > The statistics I carried until early this year suggested a regression rate
> > of around 0.15% for stable releases, where regression means that a bug was
> > found post-release and had to be fixed later. It would indeed be interesting
> > to know how many of those were found by (automated ?) testing and how many
> > were found by users.
> 
> I'd have to do some digging through bugzilla to get numbers. Some
> of this is also motivated by discussions with the CoreOS team who
> have also tried to use the stable kernels and ran into problems.
> I'll see if I can get some numbers.

We've shipped 11 different 4.14.x kernels on the CoreOS Container Linux
stable channel, all in this calendar year.  Five of them had user-impacting
regressions that had to be fixed via OS updates:

4.14.30 - vxlan panic
          https://github.com/coreos/bugs/issues/2382
4.14.42 - Failure to set MTU in xen-netfront
          https://github.com/coreos/bugs/issues/2443
4.14.44 - Failure to bring up hv_netvsc interface after it was brought down
          https://github.com/coreos/bugs/issues/2454
4.14.48 - Integer overflow causing tiny TCP receive windows
          https://github.com/coreos/bugs/issues/2457
4.14.55 - Broken CIFS client
          https://github.com/coreos/bugs/issues/2480
4.14.55 - Failure to mount ext4 filesystems 3 TB or larger
          https://github.com/coreos/bugs/issues/2485

The TCP window bug was particularly exciting, since affected machines would
have downloaded the fixed OS image at ~300 bytes/sec.  To avoid that, we had
to implement several workarounds in our update infrastructure, only the
second time we've had to do that in the history of Container Linux.

--Benjamin Gilbert
