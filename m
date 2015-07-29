Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CE9F3722
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 17:42:45 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[37.139.156.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F3F311F6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 17:42:44 +0000 (UTC)
Message-ID: <55B9108E.40108@sonymobile.com>
Date: Wed, 29 Jul 2015 10:42:38 -0700
From: Tim Bird <tim.bird@sonymobile.com>
MIME-Version: 1.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20150723105726.GC30929@amd>	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>	<20150723121441.GB29747@amd>	<20150723084251.54da2be0@gandalf.local.home>	<20150723154014.GD11162@sirena.org.uk>	<55B7FD82.8010806@sonymobile.com>
	<CAKMK7uEeO+sTj63QThd7FN3aZgoymoQv+mbNs7Sw0dD6qqLHFQ@mail.gmail.com>
In-Reply-To: <CAKMK7uEeO+sTj63QThd7FN3aZgoymoQv+mbNs7Sw0dD6qqLHFQ@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Cc: =?UTF-8?B?IkFuZGVyc3NvbiwgQmrDtnJu?= =?UTF-8?B?Ig==?=
	<Bjorn.Andersson@sonymobile.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"riverful.kim@samsung.com" <riverful.kim@samsung.com>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 07/28/2015 11:43 PM, Daniel Vetter wrote:
> On Wed, Jul 29, 2015 at 12:09 AM, Tim Bird <tim.bird@sonymobile.com> wrote:
>> There is now a wiki page at:
>> See http://elinux.org/Kernel_areas_of_focus_for_mainlining
>> In particular it has a table showing certain areas that tend to have
>> a lot of out-of-tree code (e.g. most phones have between 80K to
>> 100K of lines of wireless driver support out-of-mainline)
> 
> Quick question on your table: Is "Video" drivers/video i.e. all the
> legacy fbdev horror-show? If so you probably want to rename that to
> "GPU (legacy)" or similar since for upstream all that stuff really
> should end up as a drm gpu driver. Especially now that atomic
> modesetting is merged.

It is.  Thanks for the feedback.
 -- Tim
