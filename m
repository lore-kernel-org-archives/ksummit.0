Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D7A4718D3
	for <ksummit@lists.linux.dev>; Tue, 13 Oct 2026 04:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791866549; cv=none; b=dADwQrsjfqvJ19Dz/dOW+FiYBbmtArW8FLyYUsTx4J7hE7oUJ4RwAfkAIU69hs2/k4xFESVd5kk6lrlBlK1JOZ6yHhsxqz9UmEiw0G8DUTuzV8oXq1W1VitEdV5OFLs1ZV52+HVtxSDndim2eFLCmBr9Rytq48e2SN1FlPWpIpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791866549; c=relaxed/simple;
	bh=Ol+s2vk0ZLT1IYUizgYgeYGgE7WjYKbhbbABaqF1TpE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 In-Reply-To:Content-Type:Content-Disposition; b=J5ItwsCu6G5TkvA+Zt9cs32epqZpzwCB+lED+/eoqBwVkpnLahhku9jEm37X0DOq2yLwZyNXsJThILee1+952ot7ZrKdiw6XAO/MGlt5fd/HP5xFuU4S8FBrgHSDDBnKc5mo4Fk+bC6JjEnlSMOEJtse1d6PgccDw94CNlAkBD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Zagz6uSH; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Zagz6uSH"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1791866546;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=DN0jtBkRWMnfUDmUYaFvEQ8VuOuU0jix5BANuQb8I80=;
	b=Zagz6uSHKW6++w7/7nUJJjkUpeQ+Q4KYTmEdq1OanRXunR+qrcU4lO2bamRbNsMCod8Pz/
	B4kiggWnfI/J7+jrU2NlU3q2Pfv9RDXNpN7svdZbpMrVRc/J0l6ohia8uTSvLGJW77FeZC
	AawR8JEW1S+7qZ2iFT1BFY5abvV8eME=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-247-IS6UJCbcMQWItbuOBsmghw-1; Tue, 13 Oct 2026 04:42:24 +0000
X-MC-Unique: IS6UJCbcMQWItbuOBsmghw-1
X-Mimecast-MFC-AGG-ID: IS6UJCbcMQWItbuOBsmghw_1791866544
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-48c4f6f6691so1772969f8f.2
        for <ksummit@lists.linux.dev>; Mon, 12 Oct 2026 21:42:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791866543; x=1792471343;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DN0jtBkRWMnfUDmUYaFvEQ8VuOuU0jix5BANuQb8I80=;
        b=UElKI+uEtgoqehBVMjlyT9teZ8oWgHZhePilWG8XSqb62DJfsm2kKJv+oAmeFHHOlw
         gnlt+gtPNMaAAprS5C2koBfN3LXLMhII571LLoxVx264y+6RXIFdYuoYXeApuBfMCzBz
         s0WU0MrrIHa4nMmk48brHR0ElawpxhXaXg3QSIzxB9m6P/2LeOKF+qU8Sy0SMh5TdgY1
         9D2QJJs5QWUETyQZJ1d+4C9cec7/47em/UIZ2D08pqZoMsU+wIBDnf3eeWGwp/ChztCa
         16TDMfjnG5ZjYYK2FdcLUOkYPh58iRhIlHSAyKJEIxEBS36ObMswUx/402axGpcXaEfO
         Gd5w==
X-Forwarded-Encrypted: i=1; AKwUvBzXPXbhTJRy+Gv41Iyx76Ar/KBcRmsm3VPeVqdl3M3jBDDP/AqwPf5p4wK5t/NdjeaNF9jQNaCS@lists.linux.dev
X-Gm-Message-State: AFq9FYIOXLCyPtCPL6YI3lpu558NneCyO67DDxExRNZ4Gbk8hNk5HCkz
	NnRkcQs0hrH1o9dTpscgVBBxV1g/fJK4ORb2dOif8B6k+fCv2HpFP2Sn6g1RlZt91faienQHvlU
	xHT8X74+N3y9hfpMZ/HRLMxwZJtu36fbJsFxA/PXnd72Tj1TaV3wNF176F+I=
X-Gm-Gg: AYBFou3omEFW72mpl8E3o4HMziKeOO06BoPK6SfOZCeyaqR+VkL3d2SHtBKAslHux8z
	QrdtsW8YpUfr/6NLCWb/3g28ynfTVAOJumaTZAKhz7LyITCV3d1N05j/rdDUvH731bcMihNaN8P
	43MT9Mce/wxuAMunWpp0XcOpDSW5/D2Prl0OKg2FA1YhT/CHT8JZ6fiX61NaHCETFc6YIiXNZ36
	2cxSeWR81EeKlAMb25htLC+uD0yOV0riMnf6bA0NGAnLjM9oUu0cWpFJOqC7qeNAku00sfW2l4b
	fcWoy4Nw9kfK8FUR3DUDbH7RDkULtleN0V7SALoUV1fANH+QD61++6kgp67GqiIQSUMzfQ==
X-Received: by 2002:a05:600c:a11c:b0:4a1:97c6:d2e8 with SMTP id 5b1f17b1804b1-4a197c6d902mr105451735e9.32.1791866543518;
        Mon, 12 Oct 2026 21:42:23 -0700 (PDT)
X-Received: by 2002:a05:600c:a11c:b0:4a1:97c6:d2e8 with SMTP id 5b1f17b1804b1-4a197c6d902mr105451435e9.32.1791866542907;
        Mon, 12 Oct 2026 21:42:22 -0700 (PDT)
Received: from redhat.com ([2a0d:6fc0:3fd7:5300:3d6b:52a4:a23f:9d0b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a199e5db12sm225328815e9.2.2026.10.12.21.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 21:42:22 -0700 (PDT)
Date: Tue, 13 Oct 2026 00:42:19 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Sasha Levin <sashal@kernel.org>
Cc: workflows@vger.kernel.org, ksummit@lists.linux.dev,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Mark Brown <broonie@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Leon Romanovsky <leon@kernel.org>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
	Thorsten Leemhuis <linux@leemhuis.info>
Subject: Re: [PATCH v2 2/5] agents: add a skill to determine Fixes tags
Message-ID: <20261013003535-mutt-send-email-mst@kernel.org>
References: <20261012213452.1863248-1-sashal@kernel.org>
 <20261012213452.1863248-3-sashal@kernel.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
In-Reply-To: <20261012213452.1863248-3-sashal@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 5hsxeCiqjR5-BaefGeQXFi3Tf6K_ourkUz0c49jEwHg_1791866544
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 12, 2026 at 05:34:49PM -0400, Sasha Levin wrote:
> Blame and existing Fixes tags can point to code movement instead of the
> change that introduced a bug. Add a read-only investigation procedure
> that traces historical behavior and checks candidate commits against
> their parents before returning a tag with supporting evidence.
> 
> Keep the skill entry point and procedure together under
> agents/skills/find-fixes/. Connect the procedure to the coding-assistant
> guidance so bug fixes get verified attribution before finalization.
> 
> If the origin cannot be established, return no trailer and keep the fix
> as a draft. Applying the tag and writing the commit message remain outside
> the skill.
> 
> Validated with controlled histories covering moved code, changed
> preconditions, incorrect tags, shallow history, and reintroduction after
> a revert, as well as a real kernel fix.
> 
> Assisted-by: LLM
> Signed-off-by: Sasha Levin <sashal@kernel.org>

Current documentation states:

	A Fixes: tag indicates that the patch fixes a bug in a previous commit. It
	is used to make it easy to determine where an issue originated, which can help
	review a bug fix. This tag also assists the stable kernel team in determining
	which stable kernel versions should receive your fix. This is the preferred
	method for indicating a bug fixed by the patch. See :ref:`describe_changes` 
	for more details.


the second part is easy to miss, so "what about an old bug in commit A
commit B exposes" and "what if the bug both in commit A and commit B"
are pretty common questions.




Worth answering, maybe, and maybe here: the implication of the "stable
kernel team" rule is that the meaning of the tag is actually: "if you
have commit A then you need this commit".



> ---
>  Documentation/process/coding-assistants.rst |  23 ++-
>  agents/skills/find-fixes/SKILL.md           |  23 +++
>  agents/skills/find-fixes/guide.rst          | 177 ++++++++++++++++++++
>  3 files changed, 220 insertions(+), 3 deletions(-)
>  create mode 100644 agents/skills/find-fixes/SKILL.md
>  create mode 100644 agents/skills/find-fixes/guide.rst
> 
> diff --git a/Documentation/process/coding-assistants.rst b/Documentation/process/coding-assistants.rst
> index 3288b32e993f5..8d42d3c10f9ce 100644
> --- a/Documentation/process/coding-assistants.rst
> +++ b/Documentation/process/coding-assistants.rst
> @@ -70,6 +70,21 @@ Example::
>  
>    Assisted-by: LLM coccinelle sparse
>  
> +Determining Fixes tags
> +======================
> +
> +Before finalizing a bug-fix patch or its commit message, an assistant must
> +follow agents/skills/find-fixes/guide.rst to determine and verify the
> +introducing commit. This also applies to fixes for externally reported
> +bugs and to checking an existing Fixes tag during review. The skill entry
> +point is agents/skills/find-fixes/SKILL.md.
> +
> +The skill returns an attribution result only. It does not modify files or
> +commit messages, and invoking it does not authorize creating or amending a
> +commit. If the origin remains unresolved, report the missing evidence and
> +keep the fix as a draft. The calling workflow must hold finalization until
> +the attribution is resolved.
> +
>  Procedure for finding and fixing bugs
>  =====================================
>  
> @@ -93,9 +108,11 @@ these steps:
>     re-running a complete analysis; drop any fix that doesn't work and try
>     another one. The fix must not add build warnings and must pass the
>     checkpatch.pl checks (see submitting-patches.rst).
> -6. Commit the working fix with a detailed message describing the problem, the
> -   solution and a Fixes tag. Do not add a Signed-off-by tag, and add an
> -   Assisted-by tag, as described above.
> +6. Determine the Fixes tag as described above. Once attribution is resolved,
> +   commit the working fix with a detailed message describing the problem,
> +   the solution and the verified Fixes tag. This commit is part of the
> +   fix-preparation workflow, not the attribution skill. Do not add a
> +   Signed-off-by tag, and add an Assisted-by tag, as described above.
>  7. Identify the maintainers and lists using scripts/get_maintainer.pl.
>     Documentation/process/security-bugs.rst shows how to do that.
>  8. Indicate what could not be done. If the fix could not be built or tested, or
> diff --git a/agents/skills/find-fixes/SKILL.md b/agents/skills/find-fixes/SKILL.md
> new file mode 100644
> index 0000000000000..14978976fdd46
> --- /dev/null
> +++ b/agents/skills/find-fixes/SKILL.md
> @@ -0,0 +1,23 @@
> +---
> +# SPDX-License-Identifier: GPL-2.0-only
> +name: find-fixes
> +description: >-
> +  Determine the bug-introducing commit and return a verified Fixes tag for
> +  a Linux kernel fix. Use when preparing or reviewing bug-fix patches,
> +  drafting their commit messages, or checking an existing Fixes tag.
> +---
> +
> +# Determine a Fixes tag
> +
> +Read and follow [the investigation procedure](guide.rst), relative to this
> +skill directory. The canonical path in the kernel repository is
> +`agents/skills/find-fixes/guide.rst`. If necessary, locate the
> +repository root with `git rev-parse --show-toplevel`.
> +
> +Perform attribution only. Return the tag and its supporting evidence, or
> +an unresolved result explaining the missing evidence. Return no other
> +trailers or commit-message draft as part of the skill. Do not change files,
> +the index, refs, or commit messages, and do not apply the tag or create a
> +commit. An unresolved result must contain no Fixes trailer or placeholder;
> +it tells the calling workflow to hold finalization. Applying a determined
> +tag belongs to that workflow.
> diff --git a/agents/skills/find-fixes/guide.rst b/agents/skills/find-fixes/guide.rst
> new file mode 100644
> index 0000000000000..7b58c526f3149
> --- /dev/null
> +++ b/agents/skills/find-fixes/guide.rst
> @@ -0,0 +1,177 @@
> +.. SPDX-License-Identifier: GPL-2.0-only
> +
> +.. _find_fixes:
> +
> +Finding the commit to name in a Fixes tag
> +=========================================
> +
> +A ``Fixes:`` tag identifies the commit that introduced the bug being fixed.
> +Finding that commit requires an explanation of the failure and evidence from
> +the history. The last commit touching a line, the oldest matching text, an
> +existing tag, and a reproducer's first failure are useful leads; none alone
> +establishes the answer.
> +
> +This procedure applies to bug fixes, including fixes for externally reported
> +issues and reviews of proposed Fixes tags. It determines a tag using read-only
> +inspection. It does not authorize changing files, applying patches, checking
> +out revisions, fetching history, or creating or amending commits. Any additional
> +testing or changes require the authority of the surrounding task.
> +
> +Establish the issue and the history
> +-----------------------------------
> +
> +Record the issue, the proposed fix, and the version being fixed:
> +
> +* For a commit, resolve its full object ID and inspect its message, diff, and
> +  parents. For an ordinary commit, its parent is the pre-fix base. For a merge,
> +  identify which parent or combined state the fix addresses.
> +* For a patch, identify its base revision. For uncommitted changes, distinguish
> +  the staged and unstaged changes and record the base commit. Do not include
> +  unrelated work in the analysis. Note relevant untracked files separately.
> +* Explain the exact failure: the operation, inputs or interleaving, affected
> +  configuration, and invariant that is violated. Identify the functions and
> +  callers needed to explain it, not just the lines changed by the fix.
> +
> +Resolve revisions against the repository being inspected. For example, with
> +``fix`` set to the supplied revision::
> +
> +    git rev-parse --show-toplevel
> +    git rev-parse --verify --end-of-options "$fix^{commit}"
> +    git show --no-patch --format=fuller "$fix"
> +    git rev-list --parents -n 1 "$fix"
> +    git show --format= --find-renames "$fix"
> +
> +Use ``git diff --cached`` and ``git diff`` to inspect staged and unstaged work.
> +Read the surrounding code at the pre-fix base with ``git show <base>:<path>``.
> +Do not assume the current checkout contains the historical implementation.
> +
> +If the base or failure mechanism cannot be established, report what is missing
> +before selecting an introducer. A broad description such as "a race" is not
> +enough to distinguish different bugs in the same function.
> +
> +Trace candidate introductions
> +-----------------------------
> +
> +Start with the operations responsible for the failure. Inspect their history
> +and the history of relevant callers, contracts, guards, and data structures.
> +Treat any supplied Fixes tag, blame result, or bisection result as a candidate
> +to investigate, rather than as the conclusion.
> +
> +Useful read-only searches include the following. Here ``base``, ``path``,
> +``old_path``, ``new_path``, and ``candidate`` refer to identified revisions or
> +paths; replace the example line range and expressions with relevant ones::
> +
> +    git blame -M -C -L 100,140 "$base" -- "$path"
> +    git log --follow -p "$base" -- "$path"
> +    git log -p -S 'relevant expression' "$base" -- "$old_path" "$new_path"
> +    git log -p -G 'relevant.*pattern' "$base" -- "$old_path" "$new_path"
> +    git show --find-renames "$candidate" -- "$old_path" "$new_path"
> +    git rev-list --parents -n 1 "$candidate"
> +
> +Blame and pickaxe narrow the search; they do not prove causality. ``-S`` finds
> +changes in occurrence counts, while ``-G`` finds matching changed lines. Follow
> +renames, copies, splits, and equivalent older implementations explicitly when
> +a search stops at code movement. Inspect complete candidate changes and their
> +context, including relevant files outside the fix's diff.
> +
> +Search all relevant ancestry, not just first-parent history. Choose history
> +endpoints from the actual base and repository refs; do not assume a remote
> +named ``origin`` or a branch named ``master``. When examining history outside
> +the base's ancestry, explain how it relates to the affected tree.
> +
> +Prove the causal transition
> +---------------------------
> +
> +For each plausible candidate, compare its relevant parent state with the state
> +after the commit. Explain the invariant before and after the change, why the
> +candidate introduces the defect, and how the proposed fix addresses that same
> +defect. Inspect the earlier implementation even if the function or filename
> +did not yet exist under its current name.
> +
> +Distinguish three events:
> +
> +* Introduction of the code or pattern. This is provenance, and may predate any
> +  defect in it.
> +* Introduction of the semantic defect. This is the change that makes the
> +  implementation violate the applicable contract or invariant.
> +* A later trigger, newly reachable path, or change that makes the failure easier
> +  to observe. This may expose an existing defect, or may itself introduce the
> +  defect by changing the contract or execution context.
> +
> +Do not select a rename or refactor if it merely carries an existing defect.
> +Conversely, do not blame old code that was correct under the earlier contract.
> +When a later change exposes a latent defect, identify both commits and explain
> +why the older implementation was already defective. The location of the fix
> +does not prove that the oldest version of the modified code was wrong. If the
> +distinction cannot be justified, keep the result unresolved.
> +
> +A reproducer that fails after the candidate and succeeds before it provides
> +useful evidence when both tests exercise equivalent conditions. Build failures,
> +missing features, unsupported configurations, and changes to the test itself
> +are not evidence of a good parent. A bisection may locate an activation change
> +rather than the semantic origin. Historical source analysis is acceptable when
> +it establishes the transition; describe its reasoning and limits without
> +claiming tests were run.
> +
> +Handle discontinuities in history
> +---------------------------------
> +
> +* **Merges:** inspect each relevant parent. A bad merge resolution or the
> +  interaction of two branches can introduce a defect absent from either parent;
> +  do not assume that the first parent alone explains the transition.
> +* **Reverts and reintroductions:** trace whether the defect was removed and
> +  subsequently restored. Establish the introduction relevant to the affected
> +  lineage instead of automatically choosing the earliest occurrence.
> +* **Backports:** distinguish the upstream commit from its downstream copy and
> +  inspect any adaptation. For an upstream defect, identify the upstream origin
> +  and document its relationship to the affected branch. If the defect exists
> +  only because of a backport adaptation, identify that downstream introduction.
> +  An upstream SHA need not be an ancestor of a downstream base; verify the
> +  correspondence from the changes rather than ancestry or subjects alone.
> +* **Multiple causes:** keep independent bugs separate. If a single fix repairs
> +  distinct introductions, justify each separately before proposing multiple
> +  tags. Do not list competing guesses as multiple Fixes tags.
> +* **Incomplete history:** check ``git rev-parse --is-shallow-repository`` and
> +  whether the required commits and historical blobs are available. A shallow
> +  boundary, missing object, or initial import is not proof of introduction.
> +  If the defect predates available history, including pre-Git history, report
> +  that limit rather than assigning the first available commit by default.
> +
> +Existing tags and external reports can suggest candidates, but inspect the
> +actual historical changes. Reject alternatives with a concrete reason, such
> +as unchanged behavior across a file split or a caller that could not supply
> +the problematic input under the earlier contract.
> +
> +Return a conclusion supported by evidence
> +-----------------------------------------
> +
> +Return the attribution result to the caller. Drafting a commit message or
> +adding other trailers is outside this procedure.
> +
> +For a determined result, provide:
> +
> +* The issue and fix/base revisions analyzed.
> +* The full introducing commit ID and an explanation of the parent-to-candidate
> +  transition, citing the relevant historical code or test results.
> +* Any distinct activation commit, material rejected candidates, and limitations
> +  such as tests not run or history not available.
> +* The proposed Fixes tag, rendered from the verified commit's Git metadata.
> +
> +For example, after resolving ``candidate`` to the selected full commit ID::
> +
> +    git rev-parse --verify --end-of-options "$candidate^{commit}"
> +    git show --no-patch --abbrev=12 --format='Fixes: %h ("%s")' "$candidate"
> +
> +Git extends the abbreviation if necessary to make it unique in the available
> +repository. Preserve the exact subject and keep the tag on one line, as
> +described in Documentation/process/submitting-patches.rst. Formatting checks
> +such as ``scripts/checkpatch.pl`` do not validate the causal conclusion.
> +
> +For an unresolved result, provide the candidates, evidence, missing information,
> +and the next investigation that could distinguish them. Do not emit a Fixes
> +trailer or placeholder. The calling bug-fix workflow must hold finalization
> +and surface the unresolved origin instead of fabricating a tag or silently
> +treating the investigation as complete.
> +
> +Determining a Fixes tag does not establish stable eligibility or replace the
> +requirements in Documentation/process/stable-kernel-rules.rst.
> -- 
> 2.53.0

