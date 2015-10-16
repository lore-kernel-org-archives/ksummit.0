Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8A21C67
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 19:34:14 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1483410D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 19:34:14 +0000 (UTC)
Date: Fri, 16 Oct 2015 21:34:13 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>
In-Reply-To: <alpine.LNX.2.00.1510131125570.21100@pobox.suse.cz>
Message-ID: <alpine.LNX.2.00.1510162130430.21100@pobox.suse.cz>
References: <alpine.LNX.2.00.1507071253390.10183@pobox.suse.cz>
	<20151012171352.GD31035@thunk.org>
	<alpine.LNX.2.00.1510131125570.21100@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] live patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 13 Oct 2015, Jiri Kosina wrote:

> quite frankly, I think the need for discussing this has temporarily 
> diminished, because currently common preparatory steps are being worked on 
> (which are generally beneficial even without live patching) -- namely 
> Josh's work on reliable stack traces.

Oh, and also rather important aspect -- the relevance of this topic quite 
depends on the folks that will be present (is the invitee list available 
somewhere by any chance?).

To sum this one up -- I can definitely give a short summary of the status 
quo of the live patching efforts (both what's currently merged and what's 
currently being worked on), but I am not sure how much interesting that's 
for general KS folk. The more controversial discussions are temporarily 
paused for the time being; I expect them to be resume within a few months 
from now.

Thanks,

-- 
Jiri Kosina
SUSE Labs
