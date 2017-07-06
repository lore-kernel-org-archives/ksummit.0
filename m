Return-Path: <SRS0=orc5=6J=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 35464A82
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 15:08:08 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 212BA180
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 15:08:07 +0000 (UTC)
Date: Thu, 6 Jul 2017 11:08:04 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20170706110804.44ca24b9@gandalf.local.home>
In-Reply-To: <20170706144116.kcvhyxezcpinhwq7@mwanda>
References: <20170706144028.46a2mt2mdzpt6ip7@mwanda>
	<20170706144116.kcvhyxezcpinhwq7@mwanda>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org, Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH 1/2] kconfig: add a silent option to
 conf_write()
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 6 Jul 2017 17:41:16 +0300
Dan Carpenter <dan.carpenter@oracle.com> wrote:

> The conf_write() function prints output "configuration written to .config" but
> I don't want it to print anything so I have added an option for that.
> 
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---

I know you replied to the TECH TOPIC about kconfig, but did you really
mean to send patches to the ksummit-discuss mailing list and not to any
other mailing list (like LKML or linux-kbuild@vger.kernel.org)?

-- Steve
