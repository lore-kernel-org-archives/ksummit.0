Return-Path: <robherring2@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1F011308
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 00:41:36 +0000 (UTC)
Received: from mail-yk0-f180.google.com (mail-yk0-f180.google.com
	[209.85.160.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B75A0188
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 00:41:35 +0000 (UTC)
Received: by yknn9 with SMTP id n9so20381234ykn.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 17:41:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20151012190137.GA1992@thunk.org>
References: <20151012190137.GA1992@thunk.org>
From: Rob Herring <robherring2@gmail.com>
Date: Thu, 15 Oct 2015 19:41:15 -0500
Message-ID: <CAL_JsqLxYRBhnLj0SyEtgwWaCPM+UcPindxZ2NswB3WKopCyPw@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Oct 12, 2015 at 2:01 PM, Theodore Ts'o <tytso@mit.edu> wrote:
> This is an initial draft for the upcoming kernel summit.

[...]

> Dual-Track Technical sessions (Oct. 27th)
> =========================================
>
> 9:00    - Welcome and agenda bashing
> 9:30    - Topic A1                   | Topic B1
> 10:00   - Topic A2                   | Topic B2
> 10:30   - Break
> 11:00   - Topic A3                   | Topic B3
> 11:30   - Topic A4                   | Topic B4
> 12:00   - Topic A5                   | Topic B5
> 12:30   - Lunch
> 1:30    - Topic A6                   | Topic B6
> 2:00    - Topic A7                   | Topic B7
> 2:30    - Break
> 3:00    - Topic A8                   | Topic B8
> 3:30    - Topic A9                   | Topic B9
> 4:00    - Topic A10                  | Topic B10
> 4:30    - Break
> 5:00    - Kernel Summit Tech Day -- What went well, what can we do better?
> 5:30    - Group Photograph (for core day attendees)
> 6:30    - Dinner
>
> Potential Tech topics
> =====================
>
> 1. Mainline kernel on a cellphone (need someone to lead?)

I can lead this.

This is a kitchen sink of a topic though and something that's been
discussed several times recently at ELC and Plumbers. There's not much
point in rehashing the problem (go watch the conference videos), but
instead we should perhaps drill down into specific issues where we
have the right people present. Here's my list:

- Gaps in driver subsystems:
  - WiFi - Android gaps: mode switching, P2P, Chromecast, roaming,
ePNO, Passpoint
  - DRM/Graphics
  - BT/GPS/NFC - proper kernel drivers for serial devices
  - LEDs - tri-color support, defining roles (e.g. Android attention LED).
  - H/W video codecs
  - Camera
  - Battery/charger issues
- Android Memory management - What to do with ION?
- Power management - ?
- How to speed up mainlining process?

Other topics?


Rob
