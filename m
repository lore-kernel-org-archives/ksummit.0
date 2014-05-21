Return-Path: <matt@arkanian.console-pimps.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 31B332FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 08:53:33 +0000 (UTC)
Received: from arkanian.console-pimps.org (arkanian.console-pimps.org
	[212.110.184.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 802BE1F80A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 08:53:31 +0000 (UTC)
Date: Wed, 21 May 2014 09:53:28 +0100
From: Matt Fleming <matt@console-pimps.org>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20140521085328.GJ4798@console-pimps.org>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140516125611.06633446@notabene.brown> <537628ED.1020208@fb.com>
	<CAPcyv4ivq-03wGAarZFxJZa2wXD2zja251v6YQD86BaHvu6h4w@mail.gmail.com>
	<20140521182552.2ed57ad7@notabene.brown>
	<CAPcyv4iJ8vO_7BfqyPSpOm3AcdYvoJS8kzbiqfAwH77wO_-auA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPcyv4iJ8vO_7BfqyPSpOm3AcdYvoJS8kzbiqfAwH77wO_-auA@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
 Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 21 May, at 01:36:55AM, Dan Williams wrote:
> 
> My straw man is something like the following for driver "foo"
> 
> if (gatekeeper_foo_new_awesome_sauce)
>    do_new_thing();
> 
> Where setting gatekeeper_foo_new_awesome_sauce taints the kernel and
> warns that there is no guarantee of this functionality being present
> in the same form or at all going forward.

This kind of thing is done all the time for web developemnt - I think
it's given the name "feature bit".

It makes sense when you control the execution environment, like a web
server, and if things explode you can detect that on the web server end,
and not necessarily require your user to report the problem. It also
makes a lot of sense for continuous deployment, where the master branch
is always the branch used in production.

When a user needs to actively enable this feature and report problems
it's just like another CONFIG_* option, and I'm not sure that's an
improvement.

-- 
Matt Fleming, Intel Open Source Technology Center
