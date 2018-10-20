Return-Path: <SRS0=0QPY=NA=linuxfoundation.org=gregkh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BC3493EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 13:51:57 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 47C91701
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 13:51:56 +0000 (UTC)
Date: Sat, 20 Oct 2018 15:49:32 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel <linux-kernel@vger.kernel.org>
Message-ID: <20181020134932.GB32218@kroah.com>
References: <20181020134908.GA32218@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20181020134908.GA32218@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mishi Choudhary <mishi@linux.com>
Subject: [Ksummit-discuss] [PATCH 1/7] Code of conduct: Fix wording around
 maintainers enforcing the code of conduct
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

From: Chris Mason <clm@fb.com>

As it was originally worded, this paragraph requires maintainers to
enforce the code of conduct, or face potential repercussions.  It sends
the wrong message, when really we just want maintainers to be part of
the solution and not violate the code of conduct themselves.

Removing it doesn't limit our ability to enforce the code of conduct,
and we can still encourage maintainers to help maintain high standards
for the level of discourse in their subsystem.

Signed-off-by: Chris Mason <clm@fb.com>
Acked-by: Alex Deucher <alexander.deucher@amd.com>
Acked-by: Amir Goldstein <amir73il@gmail.com>
Acked-by: Andrew Morton <akpm@linux-foundation.org>
Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Acked-by: Boris Brezillon <boris.brezillon@bootlin.com>
Acked-by: Borislav Petkov <bp@kernel.org>
Acked-by: Christian Lütke-Stetzkamp <christian@lkamp.de>
Acked-by: Christoph Hellwig <hch@lst.de>
Acked-by: Colin Ian King <colin.king@canonical.com>
Acked-by: Dan Carpenter <dan.carpenter@oracle.com>
Acked-by: Dan Williams <dan.j.williams@intel.com>
Acked-by: Daniel Borkmann <daniel@iogearbox.net>
Acked-by: Dave Airlie <airlied@redhat.com>
Acked-by: Dave Hansen <dave.hansen@linux.intel.com>
Acked-by: David Ahern <dsa@cumulusnetworks.com>
Acked-by: David Sterba <kdave@kernel.org>
Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Acked-by: Eric Dumazet <eric.dumazet@gmail.com>
Acked-by: Felipe Balbi <balbi@kernel.org>
Acked-by: Felix Kuehling <Felix.Kuehling@amd.com>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
Acked-by: Florian Westphal <fw@strlen.de>
Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>
Acked-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Acked-by: Guenter Roeck <linux@roeck-us.net>
Acked-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
Acked-by: Hans Verkuil <hverkuil@xs4all.nl>
Acked-by: Hans de Goede <j.w.r.degoede@gmail.com>
Acked-by: Harry Wentland <harry.wentland@amd.com>
Acked-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Ingo Molnar <mingo@kernel.org>
Acked-by: Jaegeuk Kim <jaegeuk@kernel.org>
Acked-by: James Smart <james.smart@broadcom.com>
Acked-by: James Smart <jsmart2021@gmail.com>
Acked-by: Jan Kara <jack@ucw.cz>
Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>
Acked-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Acked-by: Jens Axboe <axboe@kernel.dk>
Acked-by: Jessica Yu <jeyu@kernel.org>
Acked-by: Jia-Ju Bai <baijiaju1990@gmail.com>
Acked-by: Jiri Kosina <jikos@kernel.org>
Acked-by: Jiri Olsa <jolsa@redhat.com>
Acked-by: Joerg Roedel <joro@8bytes.org>
Acked-by: Johan Hovold <johan@kernel.org>
Acked-by: Johannes Thumshirn <jth@kernel.org>
Acked-by: Jonathan Corbet <corbet@lwn.net>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
Acked-by: Kees Cook <keescook@chromium.org>
Acked-by: Kirill Tkhai <ktkhai@virtuozzo.com>
Acked-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Acked-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Lina Iyer <ilina@codeaurora.org>
Acked-by: Linus Torvalds <torvalds@linux-foundation.org>
Acked-by: Linus Walleij <linus.walleij@linaro.org>
Acked-by: Mark Brown <broonie@kernel.org>
Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
Acked-by: Matias Bjørling <mb@lightnvm.io>
Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
Acked-by: Michael Ellerman <mpe@ellerman.id.au>
Acked-by: Mimi Zohar <zohar@linux.ibm.com>
Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>
Acked-by: Nikolay Borisov <n.borisov.lkml@gmail.com>
Acked-by: Oded Gabbay <oded.gabbay@gmail.com>
Acked-by: Olof Johansson <olof@lixom.net>
Acked-by: Palmer Dabbelt <palmer@dabbelt.com>
Acked-by: Paul E. McKenney <paulmck@linux.ibm.com>
Acked-by: Peter Zijlstra <peterz@infradead.org>
Acked-by: Rafael J. Wysocki <rafael@kernel.org>
Acked-by: Richard Weinberger <richard@nod.at>
Acked-by: Rik van Riel <riel@surriel.com>
Acked-by: Rob Clark <robdclark@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Acked-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Acked-by: Sebastian Reichel <sre@kernel.org>
Acked-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Acked-by: Shawn Guo <shawnguo@kernel.org>
Acked-by: Shuah Khan <shuah@kernel.org>
Acked-by: Simon Horman <horms@verge.net.au>
Acked-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Acked-by: Stephen Hemminger <stephen@networkplumber.org>
Acked-by: Takashi Iwai <tiwai@kernel.org>
Acked-by: Tejun Heo <tj@kernel.org>
Acked-by: Theodore Ts'o <tytso@mit.edu>
Acked-by: Thierry Reding <thierry.reding@gmail.com>
Acked-by: Thomas Gleixner <tglx@linutronix.de>
Acked-by: Tim Bird <tim.bird@sony.com>
Acked-by: Todd Poynor <toddpoynor@google.com>
Acked-by: Wei Yongjun <weiyongjun1@huawei.com>
Acked-by: YueHaibing <yuehaibing@huawei.com>
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Reviewed-by: Steven Rostedt <rostedt@goodmis.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 Documentation/process/code-of-conduct.rst | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/process/code-of-conduct.rst
index ab7c24b5478c..a2641c19cf26 100644
--- a/Documentation/process/code-of-conduct.rst
+++ b/Documentation/process/code-of-conduct.rst
@@ -70,10 +70,6 @@ appropriate to the circumstances. The TAB is obligated to maintain
 confidentiality with regard to the reporter of an incident.  Further details of
 specific enforcement policies may be posted separately.
 
-Maintainers who do not follow or enforce the Code of Conduct in good faith may
-face temporary or permanent repercussions as determined by other members of the
-project’s leadership.
-
 Attribution
 ===========
 
-- 
2.19.1
