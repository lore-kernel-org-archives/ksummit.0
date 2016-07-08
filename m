Return-Path: <jikos@kernel.org>
Date: Sat, 9 Jul 2016 00:35:15 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: ksummit-discuss@lists.linux-foundation.org
Message-ID: <alpine.LNX.2.00.1607082043340.24757@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Subject: [Ksummit-discuss] [CORE TOPIC] How to cope with 'creative' userspace
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

There are many cases where certain components of modern linux desktops 
slightly misuse the features provided by the kernel.

One of the latests instances was PIDs controller being instructed by an 
init system to actually limit the number of created sub-processess/threads 
to insanely small number

	https://github.com/systemd/systemd/blob/dd050decb6ad131ebdeabb71c4f9ecb4733269c0/NEWS#L60

That of course caused horrible user experience left and right.

This is not a single and only exceptional instance of such issue.

I know that this in principle shouldn't really be directly our business, 
but I believe we should be at least a bit nervous when our interfaces are 
being used "incorrectly".

I dont' have a good idea from top of my head what we could immediately do 
to improve this. Some sort of documented guidance on sane values for 
certain userspace toggles? Issue a warning when we think userspace is 
trying to shoot itself in a foot? ...?

Thanks,

-- 
Jiri Kosina
SUSE Labs
