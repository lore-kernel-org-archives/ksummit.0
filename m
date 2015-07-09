Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B967ABD3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 12:06:48 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.226])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 32B4BF4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 12:06:48 +0000 (UTC)
Date: Thu, 9 Jul 2015 08:00:11 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Message-ID: <20150709080011.2e5833cf@grimm.local.home>
In-Reply-To: <559E4BF7.8050607@hitachi.com>
References: <20150707092434.GE11162@sirena.org.uk>
	<CACVxJT8Ae3t9x=jF-xy6NunqZCbgOoaNxy9AqOxuDg8Dx=Tk6g@mail.gmail.com>
	<20150707131411.GI2887@sirena.org.uk>
	<20150707144725.6a19727f@gandalf.local.home>
	<559E4BF7.8050607@hitachi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Tyler Baker <tyler.baker@linaro.org>, Mark Brown <broonie@sirena.org.uk>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 09 Jul 2015 19:24:55 +0900
Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com> wrote:

> /proc/kconfig[.gz]? I think we can add a list of required kconfigs
> for each testcase and indicate it. Moreover, we can include it as
> a part of kconfig and introduce CONFIG_KSELFTEST to enable those
> configs :)
> 
> 

I like the idea of having each test a separate config. We could have a
config called "ALL TESTS" and selects all of them, for those that want
to test all tests. But for each test, it would select the needed config
options to test everything for that specific test.

-- Steve
