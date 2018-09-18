Return-Path: <SRS0=A0yR=MA=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 47FB2CE0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 13:36:01 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DB3E72D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 13:36:00 +0000 (UTC)
Date: Tue, 18 Sep 2018 09:35:58 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20180918093558.7ad355dc@gandalf.local.home>
In-Reply-To: <20180917072250.5bbcb736@coco.lan>
References: <CAPcyv4i=h-7CHpu5ZvXxPsgUOPY-B-wAjX3e5+W9vCm+o081xw@mail.gmail.com>
	<1591325.98K2JSm7l9@avalon>
	<CAPM=9txDYkWu3Ta1HN0vw5Hp-isHccA4Nfj+XbPOma6BskKrKg@mail.gmail.com>
	<7500551.ylj9XQ2o2G@avalon> <20180916221523.GB3575@thunk.org>
	<20180917072250.5bbcb736@coco.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] EXPORT_SYMBOL_GPL
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 17 Sep 2018 07:22:50 -0300
Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:

> A common practice there is that, when someone rewrites the implementation
> of some symbol using EXPORT_SYMBOL() is to use EXPORT_SYMBOL_GPL() at
> the new implementation, to make clear about our desire that media modules
> should be GPL'd, but when we do simpler changes (even adding/removing
> parameters at the interface), we tend not to change it[1].

To add to this bike-shed discussion, my view is that if the function is
unique to Linux, it should be EXPORT_SYMBOL_GPL(), and if it is a
common functionality among all operating systems (like request_irq())
then I would consider it EXPORT_SYMBOL().

The tracing infrastructure that we have is unique to Linux and thus
all functions are EXPORT_SYMBOL_GPL(). Proprietary modules can't even
add trace events without breaking that. Although they could use kprobes
and function based events (when we finish that).

-- Steve
