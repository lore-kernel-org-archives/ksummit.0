Return-Path: <krzk@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 86375A55
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Jul 2017 05:55:30 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 139E5E4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Jul 2017 05:55:29 +0000 (UTC)
Received: from mail-wr0-f169.google.com (mail-wr0-f169.google.com
	[209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8799C22BDE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Jul 2017 05:55:29 +0000 (UTC)
Received: by mail-wr0-f169.google.com with SMTP id k67so31202518wrc.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Jul 2017 22:55:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170706144208.6hlgxwo37gntk6qm@mwanda>
References: <20170706144028.46a2mt2mdzpt6ip7@mwanda>
	<20170706144208.6hlgxwo37gntk6qm@mwanda>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 7 Jul 2017 07:55:27 +0200
Message-ID: <CAJKOXPfE+ffRWq_1JB_1LSpg4gDne5pWNN2fKd-3t1hwX7amFA@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org, Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH 2/2] kconfig: new command line kernel
 configuration tool
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 6, 2017 at 4:42 PM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> This tool barely works, it's just a rough draft.
>
> Sometimes I want to search for a config so I have to load menuconfig,
> then search for the config entry, then exit.  With this script I
> simply run:
>
>     ./scripts/kconfig/kconfig search COMEDI
>
> Quite often I find myself trying to enable a feature by doing this:
>
>     echo CONFIG_FEATURE=y >> .config
>
> But when I try to boot the new kernel, I find that the feature isn't
> there because the kernel runs `make oldconfig` and I didn't have all
> the depends selected so it silently removed it.  With this feature
> what you can do is:
>
>     ./scripts/kconfig/kconfig set FEATURE=y

Sounds useful. I need to enable few options from scripts and if
dependencies change they could be silently skipped.

Probably it would be nice to print what was effectively enabled to get
your feature in. However why not extending existing scripts/config? It
already has the feature for setting kconfig options (without looking
at dependencies - so like >> of yours).

Best regards,
Krzysztof

>
> It helps you enable the dependencies or it at least prints an error
> if it can't enable the feature.
>
> But this code isn't all implemented.  1) It doesn't calculate the
> dependencies well.  See expr_parse() for more details.  2)  It
> doesn't work well for things like:
>
>         ./scripts/kconfig/kconfig set BT_INTEL=m
>
> because those aren't visible, they can only be using depend
> statements.  Or say you try to set FEATURE=m when something else
> depends on it be set =y then the error message is wrong.  The
> other problem is that I don't know how to print the help text.
> Again, this is just a rough draft.
>
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  scripts/kconfig/Makefile |   6 +-
>  scripts/kconfig/kconfig  |  33 +++++
>  scripts/kconfig/lconf.c  | 332 +++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 370 insertions(+), 1 deletion(-)
>  create mode 100755 scripts/kconfig/kconfig
>  create mode 100644 scripts/kconfig/lconf.c
>
