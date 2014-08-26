Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 69074A45
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Aug 2014 21:45:08 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F361F20348
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Aug 2014 21:45:07 +0000 (UTC)
Date: Tue, 26 Aug 2014 23:45:05 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: David Howells <dhowells@redhat.com>
In-Reply-To: <30124.1409089196@warthog.procyon.org.uk>
Message-ID: <alpine.LNX.2.00.1408262344310.2992@pobox.suse.cz>
References: <53FB17A7.9090209@hitachi.com> <20140819144839.GA1270@thunk.org>
	<20140819145547.GB18536@roeck-us.net>
	<30124.1409089196@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] No more module removal -- Unconference track
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 26 Aug 2014, David Howells wrote:

> > What I found is that the module unloading involving 2 stop_machine()s
> > for each module removing. It must not be needed.
> 
> IIRC, at least one of the stop_machine() calls was to prevent problems between
> module removal oopsing and the symbol lookup trying to look up whilst dumping
> the oops.

This would be solved if symbol lookup would be RCU-ized though.

-- 
Jiri Kosina
SUSE Labs
