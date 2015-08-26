Return-Path: <matthew.garrett@coreos.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1072ED95
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 21:10:51 +0000 (UTC)
Received: from mail-yk0-f175.google.com (mail-yk0-f175.google.com
	[209.85.160.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D2C5310D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 21:10:49 +0000 (UTC)
Received: by ykll84 with SMTP id l84so200165314ykl.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 14:10:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGXu5jKLd=9y2=r21fKrN9tK6=TCPBqzZgBiqWqOqYnw5uj2tA@mail.gmail.com>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<alpine.LNX.2.00.1508241343430.25821@pobox.suse.cz>
	<alpine.LRH.2.20.1508242150310.27693@namei.org>
	<CAGXu5jLxzAtNPc_M+kPTZw6YqD1Op6Mvb-NHnJTewFanuVsqLQ@mail.gmail.com>
	<CAGXu5jKLd=9y2=r21fKrN9tK6=TCPBqzZgBiqWqOqYnw5uj2tA@mail.gmail.com>
Date: Wed, 26 Aug 2015 14:10:49 -0700
Message-ID: <CAPeXnHsTMY+s4Qdj5JJTtLE1jyM6_THsLnpHrSUSpDWWpO2qeg@mail.gmail.com>
From: Matthew Garrett <mjg59@coreos.com>
To: Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org, Jiri Kosina <jkosina@suse.cz>,
	Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(Resending now this address is subscribed)

On Wed, Aug 26, 2015 at 1:51 PM, Kees Cook <keescook@chromium.org> wrote:
> I think another valuable developer to invite would be Matthew Garrett.
> He's been looking at hardening the line between root and kernel for a
> while now.

Yeah, we can't rely on userspace to avoid or mitigate all privilege
escalation bugs - avoiding userspace escalation inherently turning
into owning the kernel remains valuable. There's various approaches to
validating userspace state that are only achievable if the kernel is
still trustworthy, so the assumption that root = game over is one that
we shouldn't allow the kernel to embody.
