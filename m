Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B6A09B76
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 08:42:10 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2D83518A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 08:42:10 +0000 (UTC)
Date: Fri, 4 Aug 2017 10:42:08 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>
In-Reply-To: <20170804022639.p27oliuinqqatar2@thunk.org>
Message-ID: <alpine.LSU.2.20.1708041040220.30597@cbobk.fhfr.pm>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<20170804022639.p27oliuinqqatar2@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 3 Aug 2017, Theodore Ts'o wrote:

> One way that we could try to make things better is by having some kind
> of semi-automated system which monitors changes in include/uapi/*.h in
> linux-next.  

It's unfortunately just uapi though, and for sysfs it's a bit more 
difficult to define a pathname pattern to watch for.

-- 
Jiri Kosina
SUSE Labs
