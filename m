Return-Path: <kvalo@codeaurora.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2CB6F89E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 18:01:16 +0000 (UTC)
Received: from smtp.codeaurora.org (smtp.codeaurora.org [198.145.29.96])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 196551E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 18:01:14 +0000 (UTC)
From: Kalle Valo <kvalo@codeaurora.org>
To: Joe Perches <joe@perches.com>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<1472348579.26978.47.camel@perches.com>
	<874m634yip.fsf@purkki.adurom.net>
	<1472473855.3425.18.camel@perches.com>
Date: Mon, 29 Aug 2016 21:01:06 +0300
In-Reply-To: <1472473855.3425.18.camel@perches.com> (Joe Perches's message of
	"Mon, 29 Aug 2016 05:30:55 -0700")
Message-ID: <87lgzfihel.fsf@kamboji.qca.qualcomm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

Joe Perches <joe@perches.com> writes:

> On Mon, 2016-08-29 at 14:15 +0300, Kalle Valo wrote:
>> I wish that checkpatch would have a way to enable/disable warnings per
>> directory (or file). For example, there would be
>> drivers/net/wireless/ath/ath10k/.checkpatch which would disable the
>> warnings are not suitable for ath10k for one reason or another:
>>=20
>> 'MSLEEP',
>> 'USLEEP_RANGE',
>> 'PRINTK_WITHOUT_KERN_LEVEL',
>> 'NETWORKING_BLOCK_COMMENT_STYLE',
>> 'BLOCK_COMMENT_STYLE',
>> 'LINUX_VERSION_CODE',
>> 'COMPLEX_MACRO',
>> 'PREFER_DEV_LEVEL',
>> 'PREFER_PR_LEVEL',
>> 'COMPARISON_TO_NULL',
>> 'BIT_MACRO',
>> 'CONSTANT_COMPARISON',
>> 'MACRO_WITH_FLOW_CONTROL'
>>=20
>> Currently my workaround is to have a custom ath10k-check script[1] which
>> runs checkpatch with those checks disabled. Oh, and it also filters out
>> some of the warnings based on the symbol it is located in.
>>=20
>> https://github.com/qca/qca-swiss-army-knife/blob/master/tools/scripts/at=
h10k/ath10k-check
>
> Hey Kalle:
>
> I looked at your script (which also does compilation
> and sparse checking) I don't see how a .checkpatch_conf
> hierarchy helps you much there as you've added all those
> long symbol name long line avoidance bits.

Yeah, it would not completely replace my script. But there's now quite a
difference with checkpatch parameters what other people use and what I
use.

> Also, there'd be a lot of rework to the globals in
> checkpatch for per-directory specific overrides if someone
> fed it files in multiple directories like
>
> checkpatch.pl <patchfile touching lib/kernel/include>

Oh, that's a good point. ath10k patches only touch one directory so I
didn't think of this.

> A couple btw's:
>
> Why avoid the printk, sleep or macro tests?

Actually I don't remember anymore :) I should have documented that in
the script.

(Runs some tests)

PRINTK_WITHOUT_KERN_LEVEL: I think I can enable this again, IIRC earlier
it gave useless warnings in ath10k_warn() & co.

MSLEEP: I think this is just noise, we don't care if it's actually 20 ms
even if ask for 10 ms. That's the minimum time to wait, not the maximum
(from our/HW point of view).

drivers/net/wireless/ath/ath10k/ahb.c:422: msleep < 20ms can sleep for up t=
o 20ms; see Documentation/timers/timers-howto.txt
drivers/net/wireless/ath/ath10k/ahb.c:427: msleep < 20ms can sleep for up t=
o 20ms; see Documentation/timers/timers-howto.txt
drivers/net/wireless/ath/ath10k/ahb.c:432: msleep < 20ms can sleep for up t=
o 20ms; see Documentation/timers/timers-howto.txt
drivers/net/wireless/ath/ath10k/ahb.c:437: msleep < 20ms can sleep for up t=
o 20ms; see Documentation/timers/timers-howto.txt
drivers/net/wireless/ath/ath10k/ahb.c:442: msleep < 20ms can sleep for up t=
o 20ms; see Documentation/timers/timers-howto.txt
drivers/net/wireless/ath/ath10k/pci.c:2244: msleep < 20ms can sleep for up =
to 20ms; see Documentation/timers/timers-howto.txt
drivers/net/wireless/ath/ath10k/pci.c:2251: msleep < 20ms can sleep for up =
to 20ms; see Documentation/timers/timers-howto.txt
drivers/net/wireless/ath/ath10k/pci.c:2275: msleep < 20ms can sleep for up =
to 20ms; see Documentation/timers/timers-howto.txt

USLEEP_RANGE: I don't remember why I disabled this, most likely just
because of the msleep noise above

drivers/net/wireless/ath/ath10k/pci.c:2672: usleep_range is preferred over =
udelay; see Documentation/timers/timers-howto.txt

COMPLEX_MACRO: Can't remember this one either, I guess I just didn't
find a good solution to shut up checkpatch. But that was a long time
ago, it might be fixable now.

drivers/net/wireless/ath/ath10k/wmi.h:315: Macros with complex values shoul=
d be enclosed in parentheses
drivers/net/wireless/ath/ath10k/wmi.h:6344: Macros with complex values shou=
ld be enclosed in parentheses

BIT_MACRO: there's a lot of warnings from this one, the benefit from
changing all of them is questionable so I just disabled it.

drivers/net/wireless/ath/ath10k/rx_desc.h:676: Prefer using the BIT macro

> And this for ath10k_core_register_work:
>
> =C2=A0 =C2=A0 ('ath10k_core_register_work', 'RETURN_VOID'),
>
> and the code associated to it:
>
> err:
> 	/* TODO: It's probably a good idea to release device from the driver
> 	 * but calling device_release_driver() here will cause a deadlock.
> 	 */
> 	return;
> }
>
> ia avoided a few times in the kernel by using a bare ";"
> instead of "return;" before the function closing brace.

Heh, didn't know that.

> It's maybe unfortunate that gcc / c spec doesn't allow
> jumping to a label just before the function close brace.

Indeed.

I find checkpatch very useful to maintain certain coding style in ath10k
and I don't need to worry small details like whitespace. I just need to
disable some of the warnings so that they don't hide the real warnings
I'm interested about.

--=20
Kalle Valo
