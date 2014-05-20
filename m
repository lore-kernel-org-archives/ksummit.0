Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BF718928
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 May 2014 23:46:35 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 456CD2027C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 May 2014 23:46:35 +0000 (UTC)
Date: Wed, 21 May 2014 01:46:31 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1400628521.2481.6.camel@dabdike>
Message-ID: <alpine.LNX.2.00.1405210144310.20534@pobox.suse.cz>
References: <537BA385.6090208@zytor.com> <20140520225301.GC21744@cloud>
	<1400628521.2481.6.camel@dabdike>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Services needed from kernel.org
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 21 May 2014, James Bottomley wrote:

> > How feasible is it to support git hooks that want to construct and 
> > send (significant volumes of) email, while retaining the security and 
> > sandboxing currently being applied to git repositories?
> 
> Seconded; it's a pain having to run my commit hooks on a different
> system, particularly as the email is set up to come from kernel.org

I hate e-mails which contain just '+1' and nothing else, so I'd also add 
that I find this very nice-to-have feature as well, as discussed at [1] 
already :)

[1] http://lists.linuxfoundation.org/pipermail/ksummit-discuss/2014-May/000489.html

Thanks,

-- 
Jiri Kosina
SUSE Labs
