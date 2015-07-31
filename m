Return-Path: <bhelgaas@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7BA7E405
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 16:27:59 +0000 (UTC)
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CD3648B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 16:27:58 +0000 (UTC)
Received: by wibxm9 with SMTP id xm9so38841933wib.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 09:27:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <55BAE39F.9060705@oracle.com>
References: <55BAE39F.9060705@oracle.com>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Fri, 31 Jul 2015 11:27:38 -0500
Message-ID: <CAErSpo52d5DEp_KuVoQXm4DsVakemDboLUysy6_vHL6+-xgRJw@mail.gmail.com>
To: Sasha Levin <sasha.levin@oracle.com>
Content-Type: text/plain; charset=UTF-8
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

On Thu, Jul 30, 2015 at 9:55 PM, Sasha Levin <sasha.levin@oracle.com> wrote:
> Mainly I'd like to talk about improving testing around the kernel, both by catching bugs
> and by improving the quality of debug output that comes out of the kernel.

What sort of debug output improvements are you interested in?  I spend
a fair amount of time converting to dev_printk and %pR.  They make the
kernel more consistent and approachable, but they're minor and I'm
sure you have more substantive things in mind.
