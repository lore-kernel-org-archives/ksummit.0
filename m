Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C41A22
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 May 2018 09:57:57 +0000 (UTC)
Received: from mx1.redhat.com (mx3-rdu2.redhat.com [66.187.233.73])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 05B73673
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 May 2018 09:57:56 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20180503190431.GV18390@sasha-vm>
References: <20180503190431.GV18390@sasha-vm> <20180501163818.GD1468@sasha-vm>
	<CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org>
	<20180503144612.GJ18390@sasha-vm>
	<20180503165446.GB30522@ZenIV.linux.org.uk>
	<20180503173422.GR18390@sasha-vm>
	<20180503182039.GC30522@ZenIV.linux.org.uk>
To: Sasha Levin <Alexander.Levin@microsoft.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8668.1525427874.1@warthog.procyon.org.uk>
Date: Fri, 04 May 2018 10:57:54 +0100
Message-ID: <8669.1525427874@warthog.procyon.org.uk>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Sasha Levin via Ksummit-discuss wrote:

> 	Cc: stable@vger.kernel.org # commit-id-of-(2)

Can you please not do this?  This screws up email address parsing in some
tools.

David
