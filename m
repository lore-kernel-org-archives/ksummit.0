Return-Path: <boazharrosh@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5A59966FF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Oct 2018 16:10:48 +0000 (UTC)
Received: from mail-yw1-f44.google.com (mail-yw1-f44.google.com
	[209.85.161.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 25401762
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Oct 2018 16:10:46 +0000 (UTC)
Received: by mail-yw1-f44.google.com with SMTP id v198-v6so963475ywg.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Oct 2018 09:10:46 -0700 (PDT)
MIME-Version: 1.0
From: Boaz <boazharrosh@gmail.com>
Date: Tue, 2 Oct 2018 19:10:33 +0300
Message-ID: <CAPvSq70QMfhF1kwKDVVz14pLP73XvVoJ8DJU7FRciaUg5zxYUA@mail.gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
Content-Type: multipart/alternative; boundary="00000000000011dfb40577412a59"
Subject: [Ksummit-discuss] [TECH TOPIC] Linux Plumbers 2018: ZUFS - Zero
 Copy User-Mode FileSystem - One year Later
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--00000000000011dfb40577412a59
Content-Type: text/plain; charset="UTF-8"

Linux Plumbers 2018: ZUFS - Zero Copy User-Mode FileSystem - One year Later

One year after its inception there are real hardened FSs. Real performance
measurements. and many innovative fixtures. But is it ready for upstream?

Few highlights:

- ALL VFS api working including dax, mmap IOCTL xattrs ACLs ....
  (Missing quota)
- IO API changed (From last year)
- Support for ASYNC operations
- Support for both pmem and regular block devices
- Support for private memory pools
- ZTs multy-channel and dynamic channel allocation
- And many more ...

In the talk I will give a short architectural and functional overview.
Then will go over some of the leftover challenges.
And finally hope to engage in an open discussion of how this project should
move
forward to be accepted into the Kernel, gain more users and FS
implementations.

Cheers
Boaz

--00000000000011dfb40577412a59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Li=
nux Plumbers 2018: ZUFS - Zero Copy User-Mode FileSystem - One year Later<b=
r></div><div><br></div><div>One year after its inception there are real har=
dened FSs. Real performance measurements. and many innovative fixtures. But=
 is it ready for upstream?</div><div><br></div><div>Few highlights:</div><d=
iv><br></div><div>- ALL VFS api working including dax, mmap IOCTL xattrs AC=
Ls ....</div><div>=C2=A0 (Missing quota)</div><div>- IO API changed (From l=
ast year)</div><div>- Support for ASYNC operations</div><div>- Support for =
both pmem and regular block devices</div><div>- Support for private memory =
pools</div><div>- ZTs multy-channel and dynamic channel allocation</div><di=
v>- And many more ...</div><div><br></div><div>In the talk I will give a sh=
ort architectural and functional overview.</div><div>Then will go over some=
 of the leftover challenges.</div><div>And finally hope to engage in an ope=
n discussion of how this project should move=C2=A0</div><div>forward to be =
accepted into the Kernel, gain more users and=C2=A0FS implementations.</div=
><div><br></div><div>Cheers</div><div>Boaz</div><div><br></div></div></div>=
</div></div>

--00000000000011dfb40577412a59--
