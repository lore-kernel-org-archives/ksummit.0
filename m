Return-Path: <rdunlap@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1A77E9AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  4 Jun 2014 16:18:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F16F41F8CA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  4 Jun 2014 16:18:20 +0000 (UTC)
Message-ID: <538F46CA.70303@infradead.org>
Date: Wed, 04 Jun 2014 09:18:18 -0700
From: Randy Dunlap <rdunlap@infradead.org>
MIME-Version: 1.0
To: Theodore Ts'o <tytso@mit.edu>, ksummit-discuss@lists.linuxfoundation.org
References: <20140604130646.GA25092@thunk.org>
In-Reply-To: <20140604130646.GA25092@thunk.org>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] If you are using gmail,
	check your spam folders
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 06/04/2014 06:06 AM, Theodore Ts'o wrote:
> Hi,
> 
> Unfortunately, it's come to my attention that at least two people who
> are using GMail had their invites trapped as spam.  This is despite
> the fact that I went to careful lengths to make sure that the
> invitation passed both SPF and DKIM checks.  A forwarded message from
> Greg K-H from his Gmail spam folder confirmed that whatever got
> GMail's anti-spam filters upset, it wasn't SPF or DKIM.  (The From
> address was tytso@thunk.org, specifically so the SPF would pass, and
> so the SPF identity would == the DKIM identity.)

I often get rejects from gmail when I reply to email and one of the
Cc:s is torvalds@, akpm@, or gregkh@  linux-foundation.org (which is
using gmail).  It's all bogus AFAIK.  It's just Linux patch-related stuff.

> I'm trying to investigate this internally inside Google, but in the
> meantime, if you are using Gmail as your mail reader, plesae check
> your spam filters.  I apologize in advance for the inconvenience.

Good. Hope that works for you.

-- 
~Randy
