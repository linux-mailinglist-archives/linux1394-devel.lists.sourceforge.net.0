Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6278DB132D6
	for <lists+linux1394-devel@lfdr.de>; Mon, 28 Jul 2025 03:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XsqjDSLXhrv1MAA8Kxf9Jr8pj/T0zlWK8G805TT0z1Q=; b=ltMEfbi7mo6XPGhH0gvKkYZ/Wa
	ZkYTimXmub0fwx+OMknurYGFCps+WlvIBLHSjdOH2pcRHh87+flY5Oluf3yjkcxSYzOU1tKYhEmOc
	vR2emGjOTKLm/IrUZuyBC6EcxN5qIn1Fj+xb9hG5lZZNg+EZ8w9pi4Ri0M6kaEM0OGjE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ugD1f-00062g-2p;
	Mon, 28 Jul 2025 01:51:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1ugD1d-00062W-Gk
 for linux1394-devel@lists.sourceforge.net;
 Mon, 28 Jul 2025 01:51:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6Tv+N/N8/katx+Nag61D7gFnZ24jk3quhzStI4rkCPY=; b=QTN2sYcH0Fhbw7N2NLdd5mrlve
 Z55kXzl/e6dcXMeBcylkzP5g034wqukMxwxCimCBWhMVx3bQ6UgLxCo+Ph1gTYVcMg7yJfTzQpH7E
 MKQdIS3V1baSmBQ2/tzWRJA4Wx/4/nOVacCN6olN10+yIL+PoMSEp8VLHsmbfOvPzE6k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6Tv+N/N8/katx+Nag61D7gFnZ24jk3quhzStI4rkCPY=; b=E
 v7CzY+uHZk3cAew9C3lAETOG4pvjPGGjbcrSZ3kQDaYB8HfzWvW/BQkKgpNSHHRRCHZJdwvGplbY7
 Yoa5g5m6y1closSLP3W4/j6pyiWTmv0iaS+jphNmRg7PTZX7IJP33QbHs8eDcXaTdDm9DXQSnHnOf
 7585STetkt/GHlfk=;
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ugD1c-0007K8-2u for linux1394-devel@lists.sourceforge.net;
 Mon, 28 Jul 2025 01:51:37 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 5C408140008D;
 Sun, 27 Jul 2025 21:51:30 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-12.internal (MEProxy); Sun, 27 Jul 2025 21:51:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1753667490; x=1753753890; bh=6Tv+N/N8/k
 atx+Nag61D7gFnZ24jk3quhzStI4rkCPY=; b=sAt8hmae0+2RvqoUnsPGfMOnmN
 lk6bgtDOBq1rPMd2RQR7e7zEIVOBgVbx3N8QzoEB38aAJOssDLxSS6srqbUGXtqm
 YTx1kTdxRb4oEg4ccppV8IT7KYdCwXqq11EnyG4+JpXEqOAKDmM2666VuQMW4OUF
 KtOvQPWKwuioaXU25k+E9iydsG0o8SwrNYQSk1PzJYiSSn13DtTdQbIirbMJXueD
 uWSO9tKQ7EavEKakQ68vrDnsKUkxHsz/jmBaqod+5PR3CDHBQD9rWnNJdlAAa5MT
 ibPIPsSaqPIKPQWLYj5eRc3Sro89Zg+pWtSIyTRK4/Dfgt4yvtqfj/2hBgLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1753667490; x=1753753890; bh=6Tv+N/N8/katx+Nag61D7gFnZ24jk3quhzS
 tI4rkCPY=; b=ObRL3G+s2DBapMKZIHIjcdBQVu0saIchwl3mYmXUl07jnmiABeD
 49D5IV65NyQyzOmAghTAKmg527dbxqod74xEiwee6fU1VagyX+rszcLbzbdKyXoK
 Kirl9GCAK94kz8Pn3XVobfg300FCOLVsWTmpudjZ6tmyKW+feQhaXfgav/UN1Iv+
 puFX7Eb6nBW6+FAoUmO023lleUxkfcav0+lzRULNj4I9OxywuV+t6fYK2bp5Bf9a
 nlMprI15jRvxopuLE9iV9uoLgWuUpl8Y060uHpe9rqHEuWdYG06kMgoOnpn1zaVj
 NOlOi05DoXBUABpEb4H3+/b1h/zoYemlQIQ==
X-ME-Sender: <xms:oteGaO3kS3PlIOgLQvyDo5dEUGIVnahzo4pm3MWBdr9Z9PDiODSMdw>
 <xme:oteGaKDkP8EeaXaqOc8ArcIxIhcMsyohI3QxE22wQIY5bt9QyBdYxojcq_Y5acBko
 _GK72OSuPmpUHZ0EXQ>
X-ME-Received: <xmr:oteGaI0DtNC_rPSyHSvw-k_SRzUAF80mSwk1UDgdE-_IXFlPkrNDN1fnrigyu3wUCn9q8p1hrNm8gHQSHW2pu9FoRGgSNXqwsGGZDsJ4_kbrZQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdeltdeklecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtredttd
 enucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihes
 shgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepgefgheelheejieelhe
 evfeekhfdtfeeftdefgefhkeffteduveejgeekvefhvdeunecuffhomhgrihhnpehkvghr
 nhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphht
 thhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqd
 guvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtohep
 lhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:oteGaMvjZv_vzbsQVmeyxWBP0kvXTB6s_HEofVxSsgHE8t1HgunV4Q>
 <xmx:oteGaA5XbeprwG3tAuDJ1AnS5Vy8KP65IVA6AtTXHH1a1QtjDsy98A>
 <xmx:oteGaFKtKqa5wNXWNLFHPfWQLSgJjjqXisxTwyIMHdgUCrpckHKgrg>
 <xmx:oteGaI77ReRrebWu5UrmhRMXDMsQPzUVEyAlmimaxbe1ATNYKKXVAw>
 <xmx:oteGaEa7UB1fhLLwZivsas98QVxa9ZLmoEL7BO8lM2HPTKVtdsp7BzNh>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 27 Jul 2025 21:51:29 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/3] firewire: core: call address handlers ouside RCU
 read-side critical section
Date: Mon, 28 Jul 2025 10:51:22 +0900
Message-ID: <20250728015125.17825-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, After applying the patch that replaces tasklet usage with
 workqueue [1], I realized there is a corner case where schedule() is called
 within an RCU read-side critical section when handling asynchronou [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ugD1c-0007K8-2u
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

After applying the patch that replaces tasklet usage with workqueue [1],
I realized there is a corner case where schedule() is called within an
RCU read-side critical section when handling asynchronous transaction
from local node to itself.

The mechanism is:

fw_send_request()
->ohci_send_request()
  ->at_context_transmit()
    ->handle_local_reuest()                       [to local node]
      ...
      ->fw_core_handle_request()
        ->handle_{exclusive,fcp}_region_request() [under RCU read locking]
          ->fw_send_response()
            ->ohci_send_response()
              ->at_context_transmit()
                ->handle_local_reuest()           [to local node]
                  ...
                  ->fw_core_handle_response()
                    ->ohci_cancel_packet()        [for request packet]
                      ->disable_work_sync()
                        ->schedule()

Previously, when cancelling the request subaction of a transaction,
'tasklet_disable_in_atomic()' was used. However, this function is now
deprecated, as you know. It has been replaced with disable_work_sync()
which requires that the workqueue be allowed to sleep when invoking the
address handler.

The purpose of this patch series is to move the invocation of address
handlers outside the RCU read-side critical section. Reference counting
is newly added to ensure safe invocation outside the section.

[1] https://lore.kernel.org/lkml/20250615133253.433057-1-o-takashi@sakamocchi.jp/



Takashi Sakamoto (3):
  firewire: core: use reference counting to invoke address handlers
    safely
  firewire: core: call handler for exclusive regions outside RCU
    read-side critical section
  firewire: core: call FCP address handlers outside RCU read-side
    critical section

 drivers/firewire/core-transaction.c | 66 +++++++++++++++++++++++++----
 include/linux/firewire.h            |  4 ++
 2 files changed, 61 insertions(+), 9 deletions(-)


Regards

Takashi Sakamoto
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
