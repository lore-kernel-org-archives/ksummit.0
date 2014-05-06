Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 05D7C681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 13:18:37 +0000 (UTC)
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F21DA200AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 13:18:35 +0000 (UTC)
Received: by mail-ob0-f171.google.com with SMTP id wn1so5341823obc.16
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 06 May 2014 06:18:35 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <alpine.LNX.2.00.1405060901460.3969@pobox.suse.cz>
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
	<CAGXu5j+oo0iga2AwyeH0OiW=LLWMyeDUDry7HpNrfv=O+bZd_Q@mail.gmail.com>
	<alpine.LNX.2.00.1405060901460.3969@pobox.suse.cz>
Date: Tue, 6 May 2014 06:18:35 -0700
Message-ID: <CAGXu5jKAcDrjUtrEdPjVY3dqYhX=UrZctH1-7=qRnGqaRcVcPw@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: Jiri Kosina <jkosina@suse.cz>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] live kernel patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 6, 2014 at 12:05 AM, Jiri Kosina <jkosina@suse.cz> wrote:
> On Mon, 5 May 2014, Kees Cook wrote:
>
>> I'm very interested in this, especially as it may relate to security
>> exploit mitigation work, both in the sense of being able to arbitrarily
>> patch the kernel against flaws, and to defend against attackers being
>> able to ... er ... arbitrarily patch the kernel... :)
>
> :) Well, for performing the patching, the attacker would either have to be
> able to modprobe module (kpatch, kgraft, ksplice) or kexec to a new kernel
> (criu-based solution). In either case, the system would be owned anyway
> already, independently on any live patching mechanism.

Right -- this is the current limitation with this kind of thing. I'd
like to have both arbitrarily module loading blocked and the ability
to load generated modules at a later time. I'm hoping there can be
some discussion around providing a verification process for the newly
created modules (e.g. signing the module on a separate machine that
has private key material, etc).

-Kees

-- 
Kees Cook
Chrome OS Security
