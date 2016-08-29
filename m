Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9ADA8256
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 12:31:00 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0030.hostedemail.com
	[216.40.44.30])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 75E6084
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 12:30:59 +0000 (UTC)
Message-ID: <1472473855.3425.18.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Kalle Valo <kvalo@codeaurora.org>
Date: Mon, 29 Aug 2016 05:30:55 -0700
In-Reply-To: <874m634yip.fsf@purkki.adurom.net>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<1472348579.26978.47.camel@perches.com>
	<874m634yip.fsf@purkki.adurom.net>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Sasha Levin <levinsasha928@gmail.com>, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2016-08-29 at 14:15 +0300, Kalle Valo wrote:
> I wish that checkpatch would have a way to enable/disable warnings per
> directory (or file). For example, there would be
> drivers/net/wireless/ath/ath10k/.checkpatch which would disable the
> warnings are not suitable for ath10k for one reason or another:
> 
> 'MSLEEP',
> 'USLEEP_RANGE',
> 'PRINTK_WITHOUT_KERN_LEVEL',
> 'NETWORKING_BLOCK_COMMENT_STYLE',
> 'BLOCK_COMMENT_STYLE',
> 'LINUX_VERSION_CODE',
> 'COMPLEX_MACRO',
> 'PREFER_DEV_LEVEL',
> 'PREFER_PR_LEVEL',
> 'COMPARISON_TO_NULL',
> 'BIT_MACRO',
> 'CONSTANT_COMPARISON',
> 'MACRO_WITH_FLOW_CONTROL'
> 
> Currently my workaround is to have a custom ath10k-check script[1] which
> runs checkpatch with those checks disabled. Oh, and it also filters out
> some of the warnings based on the symbol it is located in.
> 
> https://github.com/qca/qca-swiss-army-knife/blob/master/tools/scripts/ath10k/ath10k-check

Hey Kalle:

I looked at your script (which also does compilation
and sparse checking) I don't see how a .checkpatch_conf
hierarchy helps you much there as you've added all those
long symbol name long line avoidance bits.

Also, there'd be a lot of rework to the globals in
checkpatch for per-directory specific overrides if someone
fed it files in multiple directories like

checkpatch.pl <patchfile touching lib/kernel/include>

A couple btw's:

Why avoid the printk, sleep or macro tests?

And this for ath10k_core_register_work:

    ('ath10k_core_register_work', 'RETURN_VOID'),

and the code associated to it:

err:
	/* TODO: It's probably a good idea to release device from the driver
	 * but calling device_release_driver() here will cause a deadlock.
	 */
	return;
}

ia avoided a few times in the kernel by using a bare ";"
instead of "return;" before the function closing brace.

It's maybe unfortunate that gcc / c spec doesn't allow
jumping to a label just before the function close brace.
