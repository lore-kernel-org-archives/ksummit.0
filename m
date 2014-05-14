Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4356A4D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 11:10:11 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 374191F9D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 11:10:10 +0000 (UTC)
Date: Wed, 14 May 2014 14:09:57 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Wolfram Sang <wsa@the-dreams.de>
Message-ID: <20140514110957.GC22735@mwanda>
References: <20140509170709.GA9747@redhat.com> <20140511111034.GA6400@katana>
	<53706EAB.7010601@monstr.eu> <20140512093235.GA2872@katana>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140512093235.GA2872@katana>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 12, 2014 at 11:32:35AM +0200, Wolfram Sang wrote:
> 
> > is sent. Why not just tell them run this in-kernel tool with all
> > that checking enabled before you send the patch?
> 
> make C=1 ? That could be perhaps updated to call sparse *and* smatch if
> it finds them installed.

Smatch doesn't install very well...  :(  I should try fix that before
kernel summit.

regards,
dan carpenter
