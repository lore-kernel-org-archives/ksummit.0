Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3CF9F8E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 18:46:11 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E62105D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 18:46:10 +0000 (UTC)
Date: Thu, 3 May 2018 11:46:07 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180503184607.GA21155@roeck-us.net>
References: <20180503000620.GA29205@thunk.org>
	<20180503144612.GJ18390@sasha-vm> <20180503145205.GD23311@1wt.eu>
	<20180503150104.GL18390@sasha-vm> <20180503160046.GH23311@1wt.eu>
	<20180503161452.GP18390@sasha-vm> <20180503163516.GJ23311@1wt.eu>
	<20180503172926.GQ18390@sasha-vm> <20180503175723.GA23467@1wt.eu>
	<20180503181234.GT18390@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180503181234.GT18390@sasha-vm>
Cc: Greg KH <gregkh@linuxfoundation.org>, Willy Tarreau <w@1wt.eu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 03, 2018 at 06:12:36PM +0000, Sasha Levin via Ksummit-discuss wrote:
> 
> For example, how about extending the release cycle until the amount of
> fixes for regressions introduced in the current merge window drops under
> a certain thershold? (so go to -rc20 if we need to).
> 
Reminds me of what happened at a previous employer. We had a hard rule that
a product shall not be released unless it has no more than 2 severe or
critical bugs. Solution: Stop testing 2-3 weeks ahead of the scheduled
release day.

Here: We don't want to see -rc20. Solution: Stop applying bug fixes
at -rcX.

Guenter
