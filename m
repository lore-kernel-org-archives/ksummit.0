Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E1E03EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 13:46:03 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 061D5E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 13:46:02 +0000 (UTC)
Date: Sat, 1 Aug 2015 16:45:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sasha Levin <sasha.levin@oracle.com>
Message-ID: <20150801134546.GO5180@mwanda>
References: <55BAE39F.9060705@oracle.com>
	<alpine.DEB.2.02.1507310650220.2218@localhost6.localdomain6>
	<55BBB514.7060509@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55BBB514.7060509@oracle.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 31, 2015 at 01:49:08PM -0400, Sasha Levin wrote:
>  - Encouraging folks who add new sysctls (or features to existing sysctls) to contribute
> testing code to the various testing projects around (trinity and such).

Which other fuzzers are people using besides trinity?

Also why don't we merge trinity under tools/testing/?  I bet people
would keep it in sync better if we did that.

regards,
dan carpenter
