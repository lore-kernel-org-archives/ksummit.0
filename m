Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EA3819C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Oct 2015 09:29:57 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6EF7B160
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Oct 2015 09:29:57 +0000 (UTC)
Date: Tue, 13 Oct 2015 11:29:56 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>
In-Reply-To: <20151012171352.GD31035@thunk.org>
Message-ID: <alpine.LNX.2.00.1510131125570.21100@pobox.suse.cz>
References: <alpine.LNX.2.00.1507071253390.10183@pobox.suse.cz>
	<20151012171352.GD31035@thunk.org>
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

On Mon, 12 Oct 2015, Theodore Ts'o wrote:

> I'd like to ask folks whether they feel we still need further
> discussion on Live Patching at the kernel summit.  Not being present
> at the Live Kernel Patching miniconf, if folks could describe what
> issues still need to be resolved or discussed, I'd really appreciate
> it.

Hi Ted,

quite frankly, I think the need for discussing this has temporarily 
diminished, because currently common preparatory steps are being worked on 
(which are generally beneficial even without live patching) -- namely 
Josh's work on reliable stack traces.

Only after that work is finished, the actual implementation of live 
patching improvements (and hence discussions) will resume.

So probably not really appropriate for this year's kernel summit at the 
end of the day, because there is no actual discussion happening at the 
very moment. Will very likely be a up-to-date topic for next year though.

Thanks,

-- 
Jiri Kosina
SUSE Labs
